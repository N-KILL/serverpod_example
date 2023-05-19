--
-- Class User as table user
--

CREATE TABLE "user" (
  "id" serial,
  "name" text NOT NULL,
  "mail" text NOT NULL,
  "password" text NOT NULL
);

ALTER TABLE ONLY "user"
  ADD CONSTRAINT user_pkey PRIMARY KEY (id);


