create type "public"."profile_roles" as enum ('TRAINER', 'PLAYER', 'CONTACT_PERSON');

revoke delete on table "public"."profile_player" from "anon";

revoke insert on table "public"."profile_player" from "anon";

revoke references on table "public"."profile_player" from "anon";

revoke select on table "public"."profile_player" from "anon";

revoke trigger on table "public"."profile_player" from "anon";

revoke truncate on table "public"."profile_player" from "anon";

revoke update on table "public"."profile_player" from "anon";

revoke delete on table "public"."profile_player" from "authenticated";

revoke insert on table "public"."profile_player" from "authenticated";

revoke references on table "public"."profile_player" from "authenticated";

revoke select on table "public"."profile_player" from "authenticated";

revoke trigger on table "public"."profile_player" from "authenticated";

revoke truncate on table "public"."profile_player" from "authenticated";

revoke update on table "public"."profile_player" from "authenticated";

revoke delete on table "public"."profile_player" from "service_role";

revoke insert on table "public"."profile_player" from "service_role";

revoke references on table "public"."profile_player" from "service_role";

revoke select on table "public"."profile_player" from "service_role";

revoke trigger on table "public"."profile_player" from "service_role";

revoke truncate on table "public"."profile_player" from "service_role";

revoke update on table "public"."profile_player" from "service_role";

revoke delete on table "public"."trainer_team" from "anon";

revoke insert on table "public"."trainer_team" from "anon";

revoke references on table "public"."trainer_team" from "anon";

revoke select on table "public"."trainer_team" from "anon";

revoke trigger on table "public"."trainer_team" from "anon";

revoke truncate on table "public"."trainer_team" from "anon";

revoke update on table "public"."trainer_team" from "anon";

revoke delete on table "public"."trainer_team" from "authenticated";

revoke insert on table "public"."trainer_team" from "authenticated";

revoke references on table "public"."trainer_team" from "authenticated";

revoke select on table "public"."trainer_team" from "authenticated";

revoke trigger on table "public"."trainer_team" from "authenticated";

revoke truncate on table "public"."trainer_team" from "authenticated";

revoke update on table "public"."trainer_team" from "authenticated";

revoke delete on table "public"."trainer_team" from "service_role";

revoke insert on table "public"."trainer_team" from "service_role";

revoke references on table "public"."trainer_team" from "service_role";

revoke select on table "public"."trainer_team" from "service_role";

revoke trigger on table "public"."trainer_team" from "service_role";

revoke truncate on table "public"."trainer_team" from "service_role";

revoke update on table "public"."trainer_team" from "service_role";

alter table "public"."profile_player" drop constraint "profile_player_player_id_fkey";

alter table "public"."profile_player" drop constraint "profile_player_player_id_user_id_unique";

alter table "public"."profile_player" drop constraint "profile_player_profile_id_fkey";

alter table "public"."profile_player" drop constraint "profile_player_type_check";

alter table "public"."trainer_team" drop constraint "trainer_team_profile_id_fkey";

alter table "public"."trainer_team" drop constraint "trainer_team_team_id_fkey";

drop function if exists "public"."fetch_team_with_role"(profile_uuid uuid);

alter table "public"."profile_player" drop constraint "profile_player_pkey";

alter table "public"."trainer_team" drop constraint "trainer_team_pkey";

drop index if exists "public"."profile_player_pkey";

drop index if exists "public"."profile_player_player_id_user_id_unique";

drop index if exists "public"."trainer_team_pkey";

drop table "public"."profile_player";

drop table "public"."trainer_team";

create table "public"."profile_team" (
    "team_id" uuid not null,
    "profile_id" uuid not null,
    "player_id" uuid,
    "role" profile_roles not null
);


CREATE UNIQUE INDEX trainer_team_pkey ON public.profile_team USING btree (profile_id, team_id);

alter table "public"."profile_team" add constraint "trainer_team_pkey" PRIMARY KEY using index "trainer_team_pkey";

alter table "public"."profile_team" add constraint "public_profile_team_player_id_fkey" FOREIGN KEY (player_id) REFERENCES player(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."profile_team" validate constraint "public_profile_team_player_id_fkey";

alter table "public"."profile_team" add constraint "trainer_team_profile_id_fkey" FOREIGN KEY (profile_id) REFERENCES profile(user_id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."profile_team" validate constraint "trainer_team_profile_id_fkey";

alter table "public"."profile_team" add constraint "trainer_team_team_id_fkey" FOREIGN KEY (team_id) REFERENCES team(id) not valid;

alter table "public"."profile_team" validate constraint "trainer_team_team_id_fkey";

grant delete on table "public"."profile_team" to "anon";

grant insert on table "public"."profile_team" to "anon";

grant references on table "public"."profile_team" to "anon";

grant select on table "public"."profile_team" to "anon";

grant trigger on table "public"."profile_team" to "anon";

grant truncate on table "public"."profile_team" to "anon";

grant update on table "public"."profile_team" to "anon";

grant delete on table "public"."profile_team" to "authenticated";

grant insert on table "public"."profile_team" to "authenticated";

grant references on table "public"."profile_team" to "authenticated";

grant select on table "public"."profile_team" to "authenticated";

grant trigger on table "public"."profile_team" to "authenticated";

grant truncate on table "public"."profile_team" to "authenticated";

grant update on table "public"."profile_team" to "authenticated";

grant delete on table "public"."profile_team" to "service_role";

grant insert on table "public"."profile_team" to "service_role";

grant references on table "public"."profile_team" to "service_role";

grant select on table "public"."profile_team" to "service_role";

grant trigger on table "public"."profile_team" to "service_role";

grant truncate on table "public"."profile_team" to "service_role";

grant update on table "public"."profile_team" to "service_role";


