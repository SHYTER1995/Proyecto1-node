CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "category_id" int NOT NULL,
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text DEFAULT 'not description',
  "level" varchar DEFAULT 'begginer',
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_videos" (
  "course_id" int NOT NULL,
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar UNIQUE NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "users_courses" (
  "id" serial PRIMARY KEY,
  "users_id" int NOT NULL,
  "courses_id" int NOT NULL
);

ALTER TABLE "users_courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

insert into users (
name,
email,
password,
age
) values (
'Shynellth',
'shynel@notemail.com',
'1235678',
'28'
),
(
'Juan',
'juan@notemail.com',
'1543256',
'30'
),
(
'Pedro',
'pedro@notemail.com',
'1543257',
'35'
);

insert into courses (
category_id,
title,
description,
level,
teacher
) values (
1,
'html',
'it works to make the structure of a web app',
'advanced',
'Jesus Fernandez'
),
(
1,
'css',
'it works to do the design and style of an application',
'advanced',
'Jesus Fernandez'
),
(
1,
'JavaScript',
'it works to make the logical code of the internal functions made by the application',
'advanced',
'Jesus Fernandez'
);

insert into categories (
name
) values 
('programming'),
('artificial intelligence'),
('databases');

insert into course_videos (
course_id,
title,
url
) values (
1,
'html introduction',
'https://www.youtube.com/watch?v=cqMfPS8jPys'
),
(
1,
'css introduction',
'https://www.youtube.com/watch?v=24gNhTcy6pw'
);




