import { FastifyInstance, FastifyPluginOptions } from 'fastify';

export async function greetingRoutes(
  app: FastifyInstance,
  options: FastifyPluginOptions
) {
  app.get('/', async (req, res) => {
    res.type('text/html').send(`
      <h1>Greetings!</h1>
    `);
  });
}
