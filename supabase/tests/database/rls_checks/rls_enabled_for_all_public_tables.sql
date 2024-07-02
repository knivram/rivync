begin;
CREATE EXTENSION "basejump-supabase_test_helpers";

select plan(1);

select tests.rls_enabled('public');

select * from finish();
rollback ;