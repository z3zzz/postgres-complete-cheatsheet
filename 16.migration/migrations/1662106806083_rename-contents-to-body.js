/* eslint-disable camelcase */

exports.shorthands = undefined;

// Schema migration
exports.up = (pgm) => {
  pgm.sql(`
    ALTER TABLE comments
    RENAME COLUMN contents TO body;
  `);
};

exports.down = (pgm) => {
  pgm.sql(`
    ALTER TABLE comments
    RENAME COLUMN body TO contents;
  `);
};
