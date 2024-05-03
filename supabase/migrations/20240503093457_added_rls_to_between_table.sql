alter table "public"."profile_player" enable row level security;

alter table "public"."trainer_team" enable row level security;

create policy "read access to all authenticated users"
on "public"."profile_player"
as permissive
for select
to authenticated
using (true);


create policy "read access to all authenticated users"
on "public"."trainer_team"
as permissive
for select
to authenticated
using (true);



