drop policy "read access to all authenticated users" on "public"."profile_player";

drop policy "allow select if user has player in team" on "public"."team";

drop policy "allow select if user is trainer of team" on "public"."team";

drop policy "read access to all authenticated users" on "public"."trainer_team";

alter table "public"."profile_player" disable row level security;

alter table "public"."team" disable row level security;

alter table "public"."trainer_team" disable row level security;


