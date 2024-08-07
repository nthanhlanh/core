-- create table

CREATE TABLE public."_user" (
	id SERIAL PRIMARY KEY NOT NULL,
	email varchar(255) NULL,
	firstname varchar(255) NULL,
	lastname varchar(255) NULL,
	"password" varchar(255) NULL
);
CREATE TABLE public."_role" (
	id SERIAL PRIMARY KEY NOT NULL,
	"name" varchar(255) NULL,
	CONSTRAINT "_role_name_check" CHECK (((name)::text = ANY ((ARRAY['USER'::character varying, 'ADMIN'::character varying, 'MANAGER'::character varying])::text[])))
);

CREATE TABLE public."_user_roles" (
	user_id int4 NOT NULL,
	role_id int4 NOT NULL,
	CONSTRAINT "_user_roles_pkey" PRIMARY KEY (user_id, role_id)
);


-- public."_user_roles" foreign keys

ALTER TABLE public."_user_roles" ADD CONSTRAINT fk1knb08qasyc3njr6m6je05u4f FOREIGN KEY (user_id) REFERENCES public."_user"(id);
ALTER TABLE public."_user_roles" ADD CONSTRAINT fkfrs0oltmj42g4uhim1cmflejq FOREIGN KEY (role_id) REFERENCES public."_role"(id);

CREATE TABLE public.permissions (
	id SERIAL PRIMARY KEY NOT NULL,
	"name" varchar(255) NULL,
	parent_id int8 NULL,
	"path" varchar(255) NULL
);

CREATE SEQUENCE public.token_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

CREATE TABLE public."token" (
	id INT DEFAULT nextval(token_seq) PRIMARY KEY,
	expired bool NOT NULL,
	revoked bool NOT NULL,
	"token" varchar(255) NULL,
	token_type varchar(255) NULL,
	user_id int4 NULL,
	CONSTRAINT token_token_type_check CHECK (((token_type)::text = 'BEARER'::text)),
	CONSTRAINT ukpddrhgwxnms2aceeku9s2ewy5 UNIQUE (token)
);

CREATE TABLE public.user_permissions (
	user_id int4 NOT NULL,
	permission_id int8 NOT NULL
);


-- public.user_permissions foreign keys

ALTER TABLE public.user_permissions ADD CONSTRAINT fk3rvlw2bkvomqehdgabqa6ompx FOREIGN KEY (user_id) REFERENCES public."_user"(id);
ALTER TABLE public.user_permissions ADD CONSTRAINT fkq4qlrabt4s0etm9tfkoqfuib1 FOREIGN KEY (permission_id) REFERENCES public.permissions(id);

CREATE TABLE public.book (
	id SERIAL PRIMARY KEY NOT NULL,
	author varchar(255) NULL,
	create_date timestamp(6) NOT NULL,
	last_modified timestamp(6) NULL,
	"name" varchar(255) NULL
);