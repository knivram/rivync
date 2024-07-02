begin;
select plan( 1 );

select policies_are(
    'public',
    'profile_team',
    ARRAY [
        'give read access to authenticated users'
    ]
);

select * from finish();
rollback;
