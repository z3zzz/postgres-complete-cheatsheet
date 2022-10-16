import { FastifyInstance, FastifyPluginOptions } from 'fastify';

interface PostPosts {
  Body: {
    lat: number;
    lng: number;
  };
}

export async function postPostRoutes(
  app: FastifyInstance,
  options: FastifyPluginOptions
) {
  const opts = {
    schema: {
      body: {
        type: 'object',
        properties: {
          lat: { type: 'number', minimum: -180, maximum: 180 },
          lng: { type: 'number', minimum: -180, maximum: 180 },
        },
        required: ['lat', 'lng'],
        additionalProperties: false,
      },
    },
  };

  app.post<PostPosts>('/posts', opts, async (req, res) => {
    const { lat, lng } = req.body;

    app.log.info(`loc: (${lat}, ${lng})`);

    await app.pg.query('INSERT INTO posts (loc) VALUES ($1)', [
      `(${lat}, ${lng})`,
    ]);

    res.redirect(302, '/posts');
  });
}
