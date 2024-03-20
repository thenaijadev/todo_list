BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "article" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "content" text NOT NULL,
    "publishedOn" timestamp without time zone NOT NULL,
    "isPrime" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR todo_list
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('todo_list', '20240315221628237', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240315221628237', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
