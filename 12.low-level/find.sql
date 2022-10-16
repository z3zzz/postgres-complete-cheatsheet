-- show storage path
show data_directory; -- /var/lib/postgresql/14/main

-- show database directory
select oid, datname from pg_database; -- /var/lib/postgresql/14/main/base/????

-- show table directory
-- \c database 한 후 해야 함!
select * from pg_class where relname like '%users%';  -- base/????/OOOO

-- postgresql document
https://www.postgresql.org/docs/current/storage-page-layout.html

