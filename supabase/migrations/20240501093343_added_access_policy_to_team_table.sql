create policy "allow select if user has player in team"
on "public"."team"
as permissive
for select
to public
using ((auth.uid() IN ( SELECT profile_player.profile_id
   FROM (player
     JOIN profile_player ON ((profile_player.player_id = player.id)))
  WHERE (player.team_id = team.id))));


create policy "allow select if user is trainer of team"
on "public"."team"
as permissive
for select
to public
using ((auth.uid() IN ( SELECT trainer_team.profile_id
   FROM trainer_team
  WHERE (trainer_team.team_id = team.id))));



