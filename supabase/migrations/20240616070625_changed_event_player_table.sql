create type "public"."participation_status" as enum ('ACCEPTED', 'DECLINED', 'PENDING');

revoke delete on table "public"."cancelation_reason" from "anon";

revoke insert on table "public"."cancelation_reason" from "anon";

revoke references on table "public"."cancelation_reason" from "anon";

revoke select on table "public"."cancelation_reason" from "anon";

revoke trigger on table "public"."cancelation_reason" from "anon";

revoke truncate on table "public"."cancelation_reason" from "anon";

revoke update on table "public"."cancelation_reason" from "anon";

revoke delete on table "public"."cancelation_reason" from "authenticated";

revoke insert on table "public"."cancelation_reason" from "authenticated";

revoke references on table "public"."cancelation_reason" from "authenticated";

revoke select on table "public"."cancelation_reason" from "authenticated";

revoke trigger on table "public"."cancelation_reason" from "authenticated";

revoke truncate on table "public"."cancelation_reason" from "authenticated";

revoke update on table "public"."cancelation_reason" from "authenticated";

revoke delete on table "public"."cancelation_reason" from "service_role";

revoke insert on table "public"."cancelation_reason" from "service_role";

revoke references on table "public"."cancelation_reason" from "service_role";

revoke select on table "public"."cancelation_reason" from "service_role";

revoke trigger on table "public"."cancelation_reason" from "service_role";

revoke truncate on table "public"."cancelation_reason" from "service_role";

revoke update on table "public"."cancelation_reason" from "service_role";

alter table "public"."player_event" drop constraint "player_event_cancelation_reason_id_foreign";

alter table "public"."player_event" drop constraint "player_event_event_id_foreign";

alter table "public"."player_event" drop constraint "player_event_player_id_foreign";

alter table "public"."player_event" drop constraint "player_event_status_check";

alter table "public"."cancelation_reason" drop constraint "cancelation_reason_pkey";

drop index if exists "public"."cancelation_reason_pkey";

drop table "public"."cancelation_reason";

alter table "public"."player_event" drop column "cancelation_reason_id";

alter table "public"."player_event" drop column "status";

alter table "public"."player_event" add column "cancelation_reason" text;

alter table "public"."player_event" add column "participation_status" participation_status not null;

alter table "public"."player_event" alter column "id" set default gen_random_uuid();

alter table "public"."player_event" add constraint "player_event_event_id_fkey" FOREIGN KEY (event_id) REFERENCES event(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."player_event" validate constraint "player_event_event_id_fkey";

alter table "public"."player_event" add constraint "player_event_player_id_fkey" FOREIGN KEY (player_id) REFERENCES player(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."player_event" validate constraint "player_event_player_id_fkey";


