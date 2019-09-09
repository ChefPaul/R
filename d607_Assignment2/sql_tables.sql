CREATE TABLE public.ratings
(
    date date NOT NULL,
    first_name text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    age_group text COLLATE pg_catalog."default",
    avengers_endgame integer,
    get_out integer,
    a_star_is_born integer,
    frozen integer,
    inglorious_bastards integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.ratings
    OWNER to postgres;



CREATE TABLE public.ratings_anon
(
    user_id integer NOT NULL DEFAULT nextval('ratings_anon_user_id_seq'::regclass),
    date date NOT NULL,
    age_group text COLLATE pg_catalog."default",
    avengers_endgame integer,
    get_out integer,
    a_star_is_born integer,
    frozen integer,
    inglorious_bastards integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.ratings_anon
    OWNER to postgres;