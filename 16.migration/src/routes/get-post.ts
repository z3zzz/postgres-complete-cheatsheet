import { FastifyInstance, FastifyPluginOptions } from 'fastify';

interface Post {
  id: number;
  url: string;
  loc: {
    x: number;
    y: number;
  };
}

export async function getPostRoutes(
  app: FastifyInstance,
  options: FastifyPluginOptions
) {
  app.get('/posts', async (req, res) => {
    const { rows: posts } = await app.pg.query<Post>('SELECT * from posts;');

    res.type('text/html').send(`
    <table>
      <thead>
        <tr>
          <th>id</th>
          <th>lng</th>
          <th>lat</th>
        </tr>
      </thead>
      <tbody>
        ${posts
          .map((post) => {
            return `
            <tr>
              <td>${post.id}</td>
              <td>${post.loc.x}</td>
              <td>${post.loc.y}</td>
            </tr>
          `;
          })
          .join('')}
      </tbody>
    </table>
    <form method="POST">
      <h3>Create Post</h3>
      <div>
        <label>Lng</label>
        <input name="lng" />
      </div>
      <div>
        <label>Lat</label>
        <input name="lat" />
      </div>
      <button type="submit">Create</button>
    </form> 
    `);
  });
}
