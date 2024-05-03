ALTER TABLE "public"."profile_player" DROP CONSTRAINT "profile_player_type_check";

UPDATE "public"."profile_player"
SET type = CASE
               WHEN type = 'Bezugsperson' THEN 'CONTACT_PERSON'
               WHEN type = 'Spieler' THEN 'PLAYER'
    END;

ALTER TABLE "public"."profile_player"
    ADD CONSTRAINT "profile_player_type_check"
        CHECK ((type)::text = ANY (ARRAY['PLAYER', 'CONTACT_PERSON']::text[]));

ALTER TABLE "public"."profile_player" VALIDATE CONSTRAINT "profile_player_type_check";

CREATE OR REPLACE FUNCTION fetch_team_with_role(profile_uuid UUID)
    RETURNS TABLE(id UUID, name TEXT, icon TEXT, role TEXT) AS $$
BEGIN
    RETURN QUERY
    SELECT
        team.id,
        team.name,
        team.icon,
        CASE
            WHEN tt.profile_id IS NOT NULL THEN 'TRAINER'
            ELSE COALESCE(CAST(pp.type AS TEXT), NULL)
            END
    FROM team
             LEFT JOIN profile_player pp ON pp.profile_id = profile_uuid
             LEFT JOIN player p ON pp.player_id = p.id AND p.team_id = team.id
             LEFT JOIN trainer_team tt ON tt.profile_id = profile_uuid AND tt.team_id = team.id;
END;
$$ LANGUAGE plpgsql;