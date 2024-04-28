create table "public"."cancelation_reason" (
    "id" uuid not null,
    "reason" text not null
);


create table "public"."chat" (
    "id" uuid not null,
    "team_id" uuid not null,
    "name" text not null
);


create table "public"."event" (
    "id" uuid not null,
    "team_id" uuid not null,
    "type" character varying(255) not null,
    "start" timestamp(0) without time zone not null,
    "end" timestamp(0) without time zone,
    "location" text,
    "ground" text
);


create table "public"."message" (
    "id" uuid not null,
    "chat_id" uuid not null,
    "user_id" uuid not null,
    "message" text not null,
    "sent_at" timestamp(0) without time zone not null
);


create table "public"."player" (
    "id" uuid not null,
    "team_id" uuid not null,
    "name" text not null,
    "birthdate" date not null
);


create table "public"."player_event" (
    "id" uuid not null,
    "player_id" uuid not null,
    "event_id" uuid not null,
    "status" character varying(255),
    "cancelation_reason_id" uuid,
    "has_participated" boolean
);


create table "public"."profile" (
    "user_id" uuid not null default auth.uid(),
    "first_name" text not null,
    "last_name" text not null
);


create table "public"."profile_player" (
    "id" uuid not null,
    "player_id" uuid not null,
    "user_id" uuid not null,
    "type" character varying(255) not null
);


create table "public"."team" (
    "id" uuid not null,
    "name" text not null,
    "icon" text not null
);


create table "public"."trainer_team" (
    "user_id" uuid not null,
    "team_id" uuid not null
);


CREATE UNIQUE INDEX cancelation_reason_pkey ON public.cancelation_reason USING btree (id);

CREATE UNIQUE INDEX chat_pkey ON public.chat USING btree (id);

CREATE UNIQUE INDEX event_pkey ON public.event USING btree (id);

CREATE UNIQUE INDEX message_pkey ON public.message USING btree (id);

CREATE UNIQUE INDEX player_event_pkey ON public.player_event USING btree (id);

CREATE UNIQUE INDEX player_pkey ON public.player USING btree (id);

CREATE UNIQUE INDEX profile_pkey ON public.profile USING btree (user_id);

CREATE UNIQUE INDEX profile_player_pkey ON public.profile_player USING btree (id);

CREATE UNIQUE INDEX profile_player_player_id_user_id_unique ON public.profile_player USING btree (player_id, user_id);

CREATE UNIQUE INDEX team_pkey ON public.team USING btree (id);

CREATE UNIQUE INDEX trainer_team_pkey ON public.trainer_team USING btree (user_id, team_id);

alter table "public"."cancelation_reason" add constraint "cancelation_reason_pkey" PRIMARY KEY using index "cancelation_reason_pkey";

alter table "public"."chat" add constraint "chat_pkey" PRIMARY KEY using index "chat_pkey";

alter table "public"."event" add constraint "event_pkey" PRIMARY KEY using index "event_pkey";

alter table "public"."message" add constraint "message_pkey" PRIMARY KEY using index "message_pkey";

alter table "public"."player" add constraint "player_pkey" PRIMARY KEY using index "player_pkey";

alter table "public"."player_event" add constraint "player_event_pkey" PRIMARY KEY using index "player_event_pkey";

alter table "public"."profile" add constraint "profile_pkey" PRIMARY KEY using index "profile_pkey";

alter table "public"."profile_player" add constraint "profile_player_pkey" PRIMARY KEY using index "profile_player_pkey";

alter table "public"."team" add constraint "team_pkey" PRIMARY KEY using index "team_pkey";

alter table "public"."trainer_team" add constraint "trainer_team_pkey" PRIMARY KEY using index "trainer_team_pkey";

alter table "public"."chat" add constraint "chat_team_id_foreign" FOREIGN KEY (team_id) REFERENCES team(id) not valid;

alter table "public"."chat" validate constraint "chat_team_id_foreign";

alter table "public"."event" add constraint "event_team_id_foreign" FOREIGN KEY (team_id) REFERENCES team(id) not valid;

alter table "public"."event" validate constraint "event_team_id_foreign";

alter table "public"."event" add constraint "event_type_check" CHECK (((type)::text = ANY ((ARRAY['turnier'::character varying, 'match'::character varying, 'training'::character varying])::text[]))) not valid;

alter table "public"."event" validate constraint "event_type_check";

alter table "public"."message" add constraint "message_chat_id_foreign" FOREIGN KEY (chat_id) REFERENCES chat(id) not valid;

alter table "public"."message" validate constraint "message_chat_id_foreign";

alter table "public"."player" add constraint "player_team_id_foreign" FOREIGN KEY (team_id) REFERENCES team(id) not valid;

alter table "public"."player" validate constraint "player_team_id_foreign";

alter table "public"."player_event" add constraint "player_event_cancelation_reason_id_foreign" FOREIGN KEY (cancelation_reason_id) REFERENCES cancelation_reason(id) not valid;

alter table "public"."player_event" validate constraint "player_event_cancelation_reason_id_foreign";

alter table "public"."player_event" add constraint "player_event_event_id_foreign" FOREIGN KEY (event_id) REFERENCES event(id) not valid;

alter table "public"."player_event" validate constraint "player_event_event_id_foreign";

alter table "public"."player_event" add constraint "player_event_player_id_foreign" FOREIGN KEY (player_id) REFERENCES player(id) not valid;

alter table "public"."player_event" validate constraint "player_event_player_id_foreign";

alter table "public"."player_event" add constraint "player_event_status_check" CHECK (((status)::text = ANY ((ARRAY['confirmed'::character varying, 'canceled'::character varying])::text[]))) not valid;

alter table "public"."player_event" validate constraint "player_event_status_check";

alter table "public"."profile" add constraint "profile_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."profile" validate constraint "profile_user_id_fkey";

alter table "public"."profile_player" add constraint "profile_player_player_id_foreign" FOREIGN KEY (player_id) REFERENCES player(id) not valid;

alter table "public"."profile_player" validate constraint "profile_player_player_id_foreign";

alter table "public"."profile_player" add constraint "profile_player_player_id_user_id_unique" UNIQUE using index "profile_player_player_id_user_id_unique";

alter table "public"."profile_player" add constraint "profile_player_type_check" CHECK (((type)::text = ANY ((ARRAY['Bezugsperson'::character varying, 'Spieler'::character varying])::text[]))) not valid;

alter table "public"."profile_player" validate constraint "profile_player_type_check";

alter table "public"."trainer_team" add constraint "trainer_team_team_id_foreign" FOREIGN KEY (team_id) REFERENCES team(id) not valid;

alter table "public"."trainer_team" validate constraint "trainer_team_team_id_foreign";

grant delete on table "public"."cancelation_reason" to "anon";

grant insert on table "public"."cancelation_reason" to "anon";

grant references on table "public"."cancelation_reason" to "anon";

grant select on table "public"."cancelation_reason" to "anon";

grant trigger on table "public"."cancelation_reason" to "anon";

grant truncate on table "public"."cancelation_reason" to "anon";

grant update on table "public"."cancelation_reason" to "anon";

grant delete on table "public"."cancelation_reason" to "authenticated";

grant insert on table "public"."cancelation_reason" to "authenticated";

grant references on table "public"."cancelation_reason" to "authenticated";

grant select on table "public"."cancelation_reason" to "authenticated";

grant trigger on table "public"."cancelation_reason" to "authenticated";

grant truncate on table "public"."cancelation_reason" to "authenticated";

grant update on table "public"."cancelation_reason" to "authenticated";

grant delete on table "public"."cancelation_reason" to "service_role";

grant insert on table "public"."cancelation_reason" to "service_role";

grant references on table "public"."cancelation_reason" to "service_role";

grant select on table "public"."cancelation_reason" to "service_role";

grant trigger on table "public"."cancelation_reason" to "service_role";

grant truncate on table "public"."cancelation_reason" to "service_role";

grant update on table "public"."cancelation_reason" to "service_role";

grant delete on table "public"."chat" to "anon";

grant insert on table "public"."chat" to "anon";

grant references on table "public"."chat" to "anon";

grant select on table "public"."chat" to "anon";

grant trigger on table "public"."chat" to "anon";

grant truncate on table "public"."chat" to "anon";

grant update on table "public"."chat" to "anon";

grant delete on table "public"."chat" to "authenticated";

grant insert on table "public"."chat" to "authenticated";

grant references on table "public"."chat" to "authenticated";

grant select on table "public"."chat" to "authenticated";

grant trigger on table "public"."chat" to "authenticated";

grant truncate on table "public"."chat" to "authenticated";

grant update on table "public"."chat" to "authenticated";

grant delete on table "public"."chat" to "service_role";

grant insert on table "public"."chat" to "service_role";

grant references on table "public"."chat" to "service_role";

grant select on table "public"."chat" to "service_role";

grant trigger on table "public"."chat" to "service_role";

grant truncate on table "public"."chat" to "service_role";

grant update on table "public"."chat" to "service_role";

grant delete on table "public"."event" to "anon";

grant insert on table "public"."event" to "anon";

grant references on table "public"."event" to "anon";

grant select on table "public"."event" to "anon";

grant trigger on table "public"."event" to "anon";

grant truncate on table "public"."event" to "anon";

grant update on table "public"."event" to "anon";

grant delete on table "public"."event" to "authenticated";

grant insert on table "public"."event" to "authenticated";

grant references on table "public"."event" to "authenticated";

grant select on table "public"."event" to "authenticated";

grant trigger on table "public"."event" to "authenticated";

grant truncate on table "public"."event" to "authenticated";

grant update on table "public"."event" to "authenticated";

grant delete on table "public"."event" to "service_role";

grant insert on table "public"."event" to "service_role";

grant references on table "public"."event" to "service_role";

grant select on table "public"."event" to "service_role";

grant trigger on table "public"."event" to "service_role";

grant truncate on table "public"."event" to "service_role";

grant update on table "public"."event" to "service_role";

grant delete on table "public"."message" to "anon";

grant insert on table "public"."message" to "anon";

grant references on table "public"."message" to "anon";

grant select on table "public"."message" to "anon";

grant trigger on table "public"."message" to "anon";

grant truncate on table "public"."message" to "anon";

grant update on table "public"."message" to "anon";

grant delete on table "public"."message" to "authenticated";

grant insert on table "public"."message" to "authenticated";

grant references on table "public"."message" to "authenticated";

grant select on table "public"."message" to "authenticated";

grant trigger on table "public"."message" to "authenticated";

grant truncate on table "public"."message" to "authenticated";

grant update on table "public"."message" to "authenticated";

grant delete on table "public"."message" to "service_role";

grant insert on table "public"."message" to "service_role";

grant references on table "public"."message" to "service_role";

grant select on table "public"."message" to "service_role";

grant trigger on table "public"."message" to "service_role";

grant truncate on table "public"."message" to "service_role";

grant update on table "public"."message" to "service_role";

grant delete on table "public"."player" to "anon";

grant insert on table "public"."player" to "anon";

grant references on table "public"."player" to "anon";

grant select on table "public"."player" to "anon";

grant trigger on table "public"."player" to "anon";

grant truncate on table "public"."player" to "anon";

grant update on table "public"."player" to "anon";

grant delete on table "public"."player" to "authenticated";

grant insert on table "public"."player" to "authenticated";

grant references on table "public"."player" to "authenticated";

grant select on table "public"."player" to "authenticated";

grant trigger on table "public"."player" to "authenticated";

grant truncate on table "public"."player" to "authenticated";

grant update on table "public"."player" to "authenticated";

grant delete on table "public"."player" to "service_role";

grant insert on table "public"."player" to "service_role";

grant references on table "public"."player" to "service_role";

grant select on table "public"."player" to "service_role";

grant trigger on table "public"."player" to "service_role";

grant truncate on table "public"."player" to "service_role";

grant update on table "public"."player" to "service_role";

grant delete on table "public"."player_event" to "anon";

grant insert on table "public"."player_event" to "anon";

grant references on table "public"."player_event" to "anon";

grant select on table "public"."player_event" to "anon";

grant trigger on table "public"."player_event" to "anon";

grant truncate on table "public"."player_event" to "anon";

grant update on table "public"."player_event" to "anon";

grant delete on table "public"."player_event" to "authenticated";

grant insert on table "public"."player_event" to "authenticated";

grant references on table "public"."player_event" to "authenticated";

grant select on table "public"."player_event" to "authenticated";

grant trigger on table "public"."player_event" to "authenticated";

grant truncate on table "public"."player_event" to "authenticated";

grant update on table "public"."player_event" to "authenticated";

grant delete on table "public"."player_event" to "service_role";

grant insert on table "public"."player_event" to "service_role";

grant references on table "public"."player_event" to "service_role";

grant select on table "public"."player_event" to "service_role";

grant trigger on table "public"."player_event" to "service_role";

grant truncate on table "public"."player_event" to "service_role";

grant update on table "public"."player_event" to "service_role";

grant delete on table "public"."profile" to "anon";

grant insert on table "public"."profile" to "anon";

grant references on table "public"."profile" to "anon";

grant select on table "public"."profile" to "anon";

grant trigger on table "public"."profile" to "anon";

grant truncate on table "public"."profile" to "anon";

grant update on table "public"."profile" to "anon";

grant delete on table "public"."profile" to "authenticated";

grant insert on table "public"."profile" to "authenticated";

grant references on table "public"."profile" to "authenticated";

grant select on table "public"."profile" to "authenticated";

grant trigger on table "public"."profile" to "authenticated";

grant truncate on table "public"."profile" to "authenticated";

grant update on table "public"."profile" to "authenticated";

grant delete on table "public"."profile" to "service_role";

grant insert on table "public"."profile" to "service_role";

grant references on table "public"."profile" to "service_role";

grant select on table "public"."profile" to "service_role";

grant trigger on table "public"."profile" to "service_role";

grant truncate on table "public"."profile" to "service_role";

grant update on table "public"."profile" to "service_role";

grant delete on table "public"."profile_player" to "anon";

grant insert on table "public"."profile_player" to "anon";

grant references on table "public"."profile_player" to "anon";

grant select on table "public"."profile_player" to "anon";

grant trigger on table "public"."profile_player" to "anon";

grant truncate on table "public"."profile_player" to "anon";

grant update on table "public"."profile_player" to "anon";

grant delete on table "public"."profile_player" to "authenticated";

grant insert on table "public"."profile_player" to "authenticated";

grant references on table "public"."profile_player" to "authenticated";

grant select on table "public"."profile_player" to "authenticated";

grant trigger on table "public"."profile_player" to "authenticated";

grant truncate on table "public"."profile_player" to "authenticated";

grant update on table "public"."profile_player" to "authenticated";

grant delete on table "public"."profile_player" to "service_role";

grant insert on table "public"."profile_player" to "service_role";

grant references on table "public"."profile_player" to "service_role";

grant select on table "public"."profile_player" to "service_role";

grant trigger on table "public"."profile_player" to "service_role";

grant truncate on table "public"."profile_player" to "service_role";

grant update on table "public"."profile_player" to "service_role";

grant delete on table "public"."team" to "anon";

grant insert on table "public"."team" to "anon";

grant references on table "public"."team" to "anon";

grant select on table "public"."team" to "anon";

grant trigger on table "public"."team" to "anon";

grant truncate on table "public"."team" to "anon";

grant update on table "public"."team" to "anon";

grant delete on table "public"."team" to "authenticated";

grant insert on table "public"."team" to "authenticated";

grant references on table "public"."team" to "authenticated";

grant select on table "public"."team" to "authenticated";

grant trigger on table "public"."team" to "authenticated";

grant truncate on table "public"."team" to "authenticated";

grant update on table "public"."team" to "authenticated";

grant delete on table "public"."team" to "service_role";

grant insert on table "public"."team" to "service_role";

grant references on table "public"."team" to "service_role";

grant select on table "public"."team" to "service_role";

grant trigger on table "public"."team" to "service_role";

grant truncate on table "public"."team" to "service_role";

grant update on table "public"."team" to "service_role";

grant delete on table "public"."trainer_team" to "anon";

grant insert on table "public"."trainer_team" to "anon";

grant references on table "public"."trainer_team" to "anon";

grant select on table "public"."trainer_team" to "anon";

grant trigger on table "public"."trainer_team" to "anon";

grant truncate on table "public"."trainer_team" to "anon";

grant update on table "public"."trainer_team" to "anon";

grant delete on table "public"."trainer_team" to "authenticated";

grant insert on table "public"."trainer_team" to "authenticated";

grant references on table "public"."trainer_team" to "authenticated";

grant select on table "public"."trainer_team" to "authenticated";

grant trigger on table "public"."trainer_team" to "authenticated";

grant truncate on table "public"."trainer_team" to "authenticated";

grant update on table "public"."trainer_team" to "authenticated";

grant delete on table "public"."trainer_team" to "service_role";

grant insert on table "public"."trainer_team" to "service_role";

grant references on table "public"."trainer_team" to "service_role";

grant select on table "public"."trainer_team" to "service_role";

grant trigger on table "public"."trainer_team" to "service_role";

grant truncate on table "public"."trainer_team" to "service_role";

grant update on table "public"."trainer_team" to "service_role";


