import fastifyPlugin from 'fastify-plugin';
import fastifyPostgres from '@fastify/postgres';
import type { PostgresPluginOptions } from '@fastify/postgres';
import { POSTGRES_URL } from '../constants';

export const postgres = fastifyPlugin(
  async (fastify, options: PostgresPluginOptions) => {
    fastify.register(fastifyPostgres, { connectionString: POSTGRES_URL });
  }
);
