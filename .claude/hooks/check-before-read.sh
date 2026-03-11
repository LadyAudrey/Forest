#!/bin/bash
# check-before-read.sh — Prevents Claude from reading files that are
# too large or are binary formats that will bloat the context window.
#
# Exit 0 with permissionDecision "deny" = block the read with a message
# Exit 0 with no output = allow the read

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

# No file path? Let it through (shouldn't happen, but be safe)
if [ -z "$FILE_PATH" ]; then
  exit 0
fi

# File doesn't exist? Let the tool handle the error message
if [ ! -f "$FILE_PATH" ]; then
  exit 0
fi

# --- Check 1: Binary file extensions ---
# These should never be read raw — they'll dump binary garbage into context
EXTENSION="${FILE_PATH##*.}"
EXTENSION_LOWER=$(echo "$EXTENSION" | tr '[:upper:]' '[:lower:]')

case "$EXTENSION_LOWER" in
  # Images — SVGs and heavy formats blocked (SVGs in this project are
  # AI-generated with massive path data). JPG/JPEG/PNG/WebP are allowed
  # because Claude can view them natively and they're caught by the size
  # check if they're too large.
  svg|gif|bmp|tiff|tif|ico|raw|cr2|nef|heic|heif)
    jq -n \
      --arg path "$FILE_PATH" \
      --arg ext "$EXTENSION_LOWER" \
      '{
        "hookSpecificOutput": {
          "hookEventName": "PreToolUse",
          "permissionDecision": "deny",
          "permissionDecisionReason": "BLOCKED: \($path) is a .\($ext) image file. Reading binary files dumps garbage into context and can freeze the session. If the user wants you to view an image, suggest they share it another way or describe what they need."
        }
      }'
    exit 0
    ;;
  # Video
  mp4|avi|mov|mkv|wmv|flv|webm|m4v)
    jq -n \
      --arg path "$FILE_PATH" \
      '{
        "hookSpecificOutput": {
          "hookEventName": "PreToolUse",
          "permissionDecision": "deny",
          "permissionDecisionReason": "BLOCKED: \($path) is a video file. Cannot read binary video data."
        }
      }'
    exit 0
    ;;
  # Audio
  mp3|wav|flac|aac|ogg|wma|m4a)
    jq -n \
      --arg path "$FILE_PATH" \
      '{
        "hookSpecificOutput": {
          "hookEventName": "PreToolUse",
          "permissionDecision": "deny",
          "permissionDecisionReason": "BLOCKED: \($path) is an audio file. Cannot read binary audio data."
        }
      }'
    exit 0
    ;;
  # Archives
  zip|tar|gz|bz2|7z|rar|xz)
    jq -n \
      --arg path "$FILE_PATH" \
      '{
        "hookSpecificOutput": {
          "hookEventName": "PreToolUse",
          "permissionDecision": "deny",
          "permissionDecisionReason": "BLOCKED: \($path) is an archive file. Use Bash to list or extract contents instead."
        }
      }'
    exit 0
    ;;
  # Fonts
  ttf|otf|woff|woff2|eot)
    jq -n \
      --arg path "$FILE_PATH" \
      '{
        "hookSpecificOutput": {
          "hookEventName": "PreToolUse",
          "permissionDecision": "deny",
          "permissionDecisionReason": "BLOCKED: \($path) is a font file. Cannot read binary font data."
        }
      }'
    exit 0
    ;;
esac

# --- Check 2: File size ---
FILE_SIZE=$(stat -c%s "$FILE_PATH" 2>/dev/null || stat -f%z "$FILE_PATH" 2>/dev/null)

# 250KB threshold — generous enough for viewable images, strict enough
# to catch bloated text files. The old 1MB limit was too permissive.
THRESHOLD=$((250 * 1024))

if [ "$FILE_SIZE" -gt "$THRESHOLD" ]; then
  SIZE_KB=$((FILE_SIZE / 1024))
  SIZE_MB=$((FILE_SIZE / 1024 / 1024))

  if [ "$SIZE_MB" -gt 0 ]; then
    SIZE_DISPLAY="${SIZE_MB}MB"
  else
    SIZE_DISPLAY="${SIZE_KB}KB"
  fi

  jq -n \
    --arg path "$FILE_PATH" \
    --arg size "$SIZE_DISPLAY" \
    '{
      "hookSpecificOutput": {
        "hookEventName": "PreToolUse",
        "permissionDecision": "deny",
        "permissionDecisionReason": "BLOCKED: \($path) is \($size), which exceeds the 250KB safety limit. Reading large files can freeze the session. Try using: offset/limit params to read a portion, Grep to search for specific content, or ask the user what part they need."
      }
    }'
  exit 0
fi

# All clear — allow the read
exit 0
