alter table "public"."cancelation_reason" enable row level security;

alter table "public"."chat" enable row level security;

alter table "public"."event" enable row level security;

alter table "public"."message" enable row level security;

alter table "public"."player" enable row level security;

alter table "public"."player_event" enable row level security;

alter table "public"."profile" enable row level security;

alter table "public"."profile_team" enable row level security;

alter table "public"."team" enable row level security;

create policy "give access to user in the same team"
on "public"."profile"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT 1
   FROM (profile_team pt1
     JOIN profile_team pt2 ON ((pt1.team_id = pt2.team_id)))
  WHERE ((pt1.profile_id = auth.uid()) AND (pt2.profile_id = profile.user_id)))));


create policy "give read access to authenticated users"
on "public"."profile_team"
as permissive
for select
to authenticated
using (true);


create policy "give read access to team members"
on "public"."team"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT 1
   FROM profile_team
  WHERE ((profile_team.profile_id = ( SELECT auth.uid() AS uid)) AND (profile_team.team_id = team.id)))));



