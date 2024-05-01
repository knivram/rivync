alter table "public"."trainer_team" drop constraint "trainer_team_team_id_foreign";

alter table "public"."trainer_team" add constraint "trainer_team_team_id_fkey" FOREIGN KEY (team_id) REFERENCES team(id) not valid;

alter table "public"."trainer_team" validate constraint "trainer_team_team_id_fkey";

alter table "public"."trainer_team" add constraint "trainer_team_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."trainer_team" validate constraint "trainer_team_user_id_fkey";


