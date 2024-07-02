begin;
select plan( 1 );

select policies_are(
    'public',
    'profile',
    ARRAY [
        'give access to user in the same team'
    ]
);

select * from finish();
rollback;
