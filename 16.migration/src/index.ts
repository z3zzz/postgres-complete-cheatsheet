import { PORT, POSTGRES_URL } from './constants';
import { app } from './app';

app.listen({ port: PORT, host: '0.0.0.0' }, (err, url) => {
  // fastify startup
  if (err) {
    app.log.error(err);
    process.exit(1);
  }

  app.pg.connect((err: any) => {
    if (err) {
      app.log.error(err);
      app.log.error(`Postgres connection ERROR on ${POSTGRES_URL}`);
      process.exit(1);
    }

    app.log.info(`Postgres connected at ${POSTGRES_URL}`);
  });
});
