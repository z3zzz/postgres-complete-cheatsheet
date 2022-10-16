const pg = require('pg');

const pool = new pg.Pool({
  connectionString: `postgresql://postgres:${process.env.PG_KEY}@localhost:5432/social`,
});

pool
  .query(
    `
  UPDATE posts
  SET loc = POINT(lat, lng)
  WHERE loc IS NULL;
`
  )
  .then(() => {
    console.log('complete');
    pool.end();
  })
  .catch((err) => console.error(err.message));
