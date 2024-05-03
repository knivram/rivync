alter table "public"."profile_team" add constraint "player_id set when contact_person or player otherwise null" CHECK ((((role = ANY (ARRAY['CONTACT_PERSON'::profile_roles, 'PLAYER'::profile_roles])) AND (player_id IS NOT NULL)) OR ((role = 'TRAINER'::profile_roles) AND (player_id IS NULL)))) not valid;

alter table "public"."profile_team" validate constraint "player_id set when contact_person or player otherwise null";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.verify_person_and_connected_player_in_same_team()
    RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    IF (NEW.player_id IS NULL) OR EXISTS (
        SELECT 1
        FROM player
        WHERE player.id = NEW.player_id AND player.team_id = NEW.team_id
    ) THEN
        RETURN NEW;
    ELSE
        RAISE EXCEPTION 'Player is not in the specified team.';
    END IF;
END;
$function$
;

CREATE TRIGGER check_person_and_connected_player_in_same_team BEFORE INSERT OR UPDATE ON public.profile_team FOR EACH ROW EXECUTE FUNCTION verify_person_and_connected_player_in_same_team();


