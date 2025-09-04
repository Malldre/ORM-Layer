import { defineConfig } from 'drizzle-kit';

export default defineConfig({
  out: './orm-layer',
  schema: './src/db/schema',
  dialect: 'postgresql',
  dbCredentials: {
    url: process.env.DATABASE_URL!,
  },
});
