import Fastify from 'fastify';
import { greetingRoutes, getPostRoutes, postPostRoutes } from './routes';
import { postgres, formBody } from './plugins';
import { NODE_ENV } from './constants';

// main
export const app = Fastify({
  logger: {
    transport:
      NODE_ENV !== 'production'
        ? {
            target: 'pino-pretty',
            options: { ignore: 'pid,hostname' },
          }
        : undefined,
  },
  disableRequestLogging: true,
});

// plugins
app.register(postgres);
app.register(formBody);

// routes
app.register(greetingRoutes);
app.register(getPostRoutes);
app.register(postPostRoutes);
