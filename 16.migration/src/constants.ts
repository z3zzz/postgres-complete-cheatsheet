export const PORT = parseInt(process.env.PORT || '5000');
export const POSTGRES_URL =
  process.env.POSTGRES_URL ||
  `postgresql://postgres:${process.env.PG_KEY}@localhost:5432/social`;
export const DOMAIN = process.env.DOMAIN || 'localhost';
export const NODE_ENV = process.env.NODE_ENV;
