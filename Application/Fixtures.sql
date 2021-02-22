

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('b77fdf6e-860f-4f1e-9bb7-141d154aa7e9', 'Hello World!', '`Lorem ipsum` dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-02-22 20:41:43.584196+07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('986ae3d5-edac-4530-b388-b4461d03aca1', 'gdg', 'Hello', '2021-02-22 20:58:36.059837+07');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('29519553-cf3d-424a-84ab-246d0f55a186', 'b77fdf6e-860f-4f1e-9bb7-141d154aa7e9', 'Kirill', 'Fun stuff');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('b658cd0e-48e4-40fe-a198-39b73cec91b9', 'b77fdf6e-860f-4f1e-9bb7-141d154aa7e9', 'Kirill', 'New stuff');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


