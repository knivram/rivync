begin;
select plan( 1 );

select policies_are(
    'public',
    'team',
    ARRAY [
        'give read access to team members'
    ]
);

select * from finish();
rollback;
