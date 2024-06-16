create policy "allow read access to team members"
on "public"."event"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT 1
   FROM team
  WHERE (team.id = event.team_id))));


