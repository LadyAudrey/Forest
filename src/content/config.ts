import { defineCollection, z } from 'astro:content';

const artCollection = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string().optional(),
    image: z.string().optional(),
    published: z.boolean().default(true),
    date: z.string().optional(),
    tags: z.array(z.string()).optional(),
  }),
});

const blogCollection = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string().optional(),
    pubDate: z.coerce.date(),
    updatedDate: z.coerce.date().optional(),
    heroImage: z.string().optional(),
  }),
});

const projectsCollection = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string().optional(),
    image: z.string().optional(),
    url: z.string().optional(),
    github: z.string().optional(),
    tags: z.array(z.string()).optional(),
    published: z.boolean().default(true),
  }),
});

const writingCollection = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string().optional(),
    pubDate: z.coerce.date().optional(),
    published: z.boolean().default(true),
    genre: z.enum(['fiction', 'nonfiction', 'poetry']).optional(),
    tags: z.array(z.string()).optional(),
  }),
});

const photographyCollection = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string().optional(),
    image: z.string(),
    published: z.boolean().default(true),
    date: z.string().optional(),
    location: z.string().optional(),
    tags: z.array(z.string()).optional(),
  }),
});

export const collections = {
  art: artCollection,
  blog: blogCollection,
  projects: projectsCollection,
  writing: writingCollection,
  photography: photographyCollection,
};
