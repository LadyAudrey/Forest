import { defineCollection, z } from 'astro:content';

const baseSchema = z.object({
  title: z.string(),
  description: z.string().optional(),
  date: z.coerce.date(),
  updated: z.coerce.date().optional(),
  tags: z.array(z.string()).default([]),
  published: z.boolean().default(true),
  featured: z.boolean().default(false),
  cover: z.string().optional(),
  ai_assisted: z.boolean().optional(),
  ai_notes: z.string().optional(),
});

const blog = defineCollection({
  type: 'content',
  schema: baseSchema,
});

const projects = defineCollection({
  type: 'content',
  schema: baseSchema.extend({
    status: z.enum(['idea', 'in-progress', 'complete', 'ongoing']).default('in-progress'),
    url: z.string().url().optional(),
  }),
});

const writing = defineCollection({
  type: 'content',
  schema: baseSchema.extend({
    genre: z.enum(['fiction', 'nonfiction', 'poetry']).optional(),
    series: z.string().optional(),
    order: z.number().optional(),
    generation: z.string().optional(),
    world: z.string().optional(),
    characters: z.array(z.string()).default([]),
  }),
});

const art = defineCollection({
  type: 'content',
  schema: baseSchema.extend({
    medium: z.string().optional(),
    image: z.string().optional(),
    ai_generated: z.boolean().default(false),
  }),
});

export const collections = { blog, projects, writing, art };
