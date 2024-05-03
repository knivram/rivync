alter table "public"."message" drop constraint "message_chat_id_foreign";

alter table "public"."profile_player" drop constraint "profile_player_player_id_foreign";

alter table "public"."trainer_team" drop constraint "trainer_team_user_id_fkey";

alter table "public"."profile_player" drop constraint "profile_player_player_id_user_id_unique";

alter table "public"."trainer_team" drop constraint "trainer_team_pkey";

drop index if exists "public"."profile_player_player_id_user_id_unique";

drop index if exists "public"."trainer_team_pkey";

alter table "public"."message" drop column "user_id";

alter table "public"."message" add column "profile_id" uuid not null default auth.uid();

alter table "public"."profile_player" drop column "user_id";

alter table "public"."profile_player" add column "profile_id" uuid not null;

alter table "public"."team" enable row level security;

alter table "public"."trainer_team" drop column "user_id";

alter table "public"."trainer_team" add column "profile_id" uuid not null;

CREATE UNIQUE INDEX profile_player_player_id_user_id_unique ON public.profile_player USING btree (player_id, profile_id);

CREATE UNIQUE INDEX trainer_team_pkey ON public.trainer_team USING btree (profile_id, team_id);

alter table "public"."trainer_team" add constraint "trainer_team_pkey" PRIMARY KEY using index "trainer_team_pkey";

alter table "public"."message" add constraint "message_chat_id_fkey" FOREIGN KEY (chat_id) REFERENCES chat(id) not valid;

alter table "public"."message" validate constraint "message_chat_id_fkey";

alter table "public"."message" add constraint "message_profile_id_fkey" FOREIGN KEY (profile_id) REFERENCES profile(user_id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."message" validate constraint "message_profile_id_fkey";

alter table "public"."profile_player" add constraint "profile_player_player_id_fkey" FOREIGN KEY (player_id) REFERENCES player(id) not valid;

alter table "public"."profile_player" validate constraint "profile_player_player_id_fkey";

alter table "public"."profile_player" add constraint "profile_player_profile_id_fkey" FOREIGN KEY (profile_id) REFERENCES profile(user_id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."profile_player" validate constraint "profile_player_profile_id_fkey";

alter table "public"."trainer_team" add constraint "trainer_team_profile_id_fkey" FOREIGN KEY (profile_id) REFERENCES profile(user_id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."trainer_team" validate constraint "trainer_team_profile_id_fkey";

alter table "public"."profile_player" add constraint "profile_player_player_id_user_id_unique" UNIQUE using index "profile_player_player_id_user_id_unique";


