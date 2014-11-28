CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "schedules" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "start_time" datetime, "time_of_day" varchar, "status" boolean, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "end_time" datetime);
INSERT INTO schema_migrations (version) VALUES ('20141123080226');

INSERT INTO schema_migrations (version) VALUES ('20141123154713');

