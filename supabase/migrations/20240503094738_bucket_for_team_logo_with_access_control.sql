create policy "give user read access to there team folder nt6hwc_0"
on "storage"."objects"
as permissive
for select
to public
using (((bucket_id = 'teams'::text) AND ((storage.foldername(name))[1] IN ( SELECT (team.id)::text AS id
   FROM team))));



