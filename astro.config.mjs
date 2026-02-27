import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  site: 'https://ladyaudrey.github.io',
  base: '/yours-truly-main',
  integrations: [tailwind()],
  markdown: {
    shikiConfig: {
      theme: 'github-dark',
    },
  },
});
