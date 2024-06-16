create type "public"."event_type" as enum ('TRAINING', 'TOURNAMENT', 'MATCH');

alter table "public"."event" drop constraint "event_type_check";

alter table "public"."event" alter column "end" set data type timestamp with time zone using "end"::timestamp with time zone;

alter table "public"."event" alter column "start" set data type timestamp with time zone using "start"::timestamp with time zone;

alter table "public"."event" alter column "type" set data type event_type using "type"::event_type;


