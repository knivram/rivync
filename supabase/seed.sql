SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.6 (Ubuntu 15.6-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'ef3bafb8-d469-439c-84b1-8dbbeb5b2ff3', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"trainer@gmail.com","user_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","user_phone":""}}', '2024-05-01 08:38:04.134878+00', ''),
	('00000000-0000-0000-0000-000000000000', '44336cc1-169f-44b9-9bf9-810b09cd8306', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"player@gmail.com","user_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","user_phone":""}}', '2024-05-01 08:38:29.88962+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c05211c7-baa3-4e00-b0f2-803b985833e4', '{"action":"login","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 09:37:21.01778+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a14fa184-0db1-4a28-9ae7-84521b0d71a0', '{"action":"login","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 09:56:06.57195+00', ''),
	('00000000-0000-0000-0000-000000000000', '54b1b3eb-a2df-4abe-8e40-442a57efdbd3', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 10:35:44.441121+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9b2ad48-d450-4e26-af8f-26163db1b32b', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 10:35:44.442043+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4a30b40-4040-483d-9173-ed73dd7b71c6', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 10:54:15.460765+00', ''),
	('00000000-0000-0000-0000-000000000000', '93c2b638-a11b-4f96-a93d-12c6ab32be5e', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 10:54:15.461577+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c9c49a8b-cd49-470f-a758-d5eca21784b4', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 11:34:03.419701+00', ''),
	('00000000-0000-0000-0000-000000000000', '3eb90cd3-a61b-4566-8846-f9787e161b0f', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 11:34:03.420785+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aefe38cd-4646-4824-aec1-602943e2650b', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 11:52:43.187574+00', ''),
	('00000000-0000-0000-0000-000000000000', '4465c3bd-2b67-4698-898b-e5f63ccd9444', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 11:52:43.188365+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1c5f63d-cb20-4672-b6b6-85a2bf366230', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 12:32:03.668821+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abea62f5-4078-4e10-ac83-e59b3ee4bf14', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 12:32:03.669553+00', ''),
	('00000000-0000-0000-0000-000000000000', '7f6062d1-e0b7-402f-a6b8-ca4cb26c33b6', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 13:08:18.747582+00', ''),
	('00000000-0000-0000-0000-000000000000', '955c36c9-838e-4410-a407-5ea96e697ba0', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 13:08:18.748406+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a783033-cce9-468e-8d12-49d9ae444fef', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 13:30:13.755027+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4817251-9b0b-42a2-a73a-3f61f7d31185', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 13:30:13.755999+00', ''),
	('00000000-0000-0000-0000-000000000000', '93652403-b684-4f08-94a2-a8c71717a42d', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 14:06:42.750998+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec706f86-2e0b-4bfd-aa13-46785d89183d', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 14:06:42.751565+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb7be8e6-c504-4537-b8a1-050ff4fc4217', '{"action":"login","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 14:12:25.398304+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3a61a5e-e188-4ee5-af80-22b95feb3176', '{"action":"logout","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-05-01 14:15:21.692506+00', ''),
	('00000000-0000-0000-0000-000000000000', '47e77f81-9259-400c-887f-2ff61aa66114', '{"action":"login","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 14:15:40.653116+00', ''),
	('00000000-0000-0000-0000-000000000000', '930ed126-f48c-4cf4-8450-c39e7934f83d', '{"action":"logout","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-05-01 14:16:13.155174+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e499a068-13ee-44bd-aca2-672b3d6f1c59', '{"action":"user_signedup","actor_id":"265f3d05-f61e-4cef-ad5c-52a2bcc703ef","actor_username":"no-teams@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-05-01 14:16:27.800057+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c83a6c5a-b227-4f62-953b-44e62c817479', '{"action":"login","actor_id":"265f3d05-f61e-4cef-ad5c-52a2bcc703ef","actor_username":"no-teams@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 14:16:27.803193+00', ''),
	('00000000-0000-0000-0000-000000000000', '431edcb3-fef4-4864-8ae9-09f8c92678bd', '{"action":"logout","actor_id":"265f3d05-f61e-4cef-ad5c-52a2bcc703ef","actor_username":"no-teams@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-05-01 14:17:20.708655+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f1d9872-4fa9-4761-bfea-8b8f1ef12c84', '{"action":"login","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 14:17:40.966109+00', ''),
	('00000000-0000-0000-0000-000000000000', '30422c25-08d4-4d35-90d4-7e0260602eff', '{"action":"logout","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-05-01 15:06:43.471075+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fc53470-0722-4bec-844d-cb2797187543', '{"action":"login","actor_id":"265f3d05-f61e-4cef-ad5c-52a2bcc703ef","actor_username":"no-teams@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 15:06:58.989742+00', ''),
	('00000000-0000-0000-0000-000000000000', '9792c285-f3fe-43c7-89cb-dd637eb302b2', '{"action":"logout","actor_id":"265f3d05-f61e-4cef-ad5c-52a2bcc703ef","actor_username":"no-teams@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-05-01 15:21:17.431526+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a54be04-6e70-4a82-ad44-249d37718f4c', '{"action":"login","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 15:21:41.407278+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f78e404-dad5-4239-bff9-23ed04a07969', '{"action":"logout","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-05-01 15:30:09.803306+00', ''),
	('00000000-0000-0000-0000-000000000000', '38290945-bbd7-48cc-9185-2c8b93904dcc', '{"action":"login","actor_id":"265f3d05-f61e-4cef-ad5c-52a2bcc703ef","actor_username":"no-teams@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 15:30:47.709939+00', ''),
	('00000000-0000-0000-0000-000000000000', '97cb855b-e386-4393-a70e-b9666833f11b', '{"action":"logout","actor_id":"265f3d05-f61e-4cef-ad5c-52a2bcc703ef","actor_username":"no-teams@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-05-01 15:31:05.496788+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3eddf30-4f39-4c73-a670-9186771e6791', '{"action":"login","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 18:57:35.819366+00', ''),
	('00000000-0000-0000-0000-000000000000', '50bf3fe9-f09d-40dd-8ae0-6443fe069fc3', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 19:59:59.135457+00', ''),
	('00000000-0000-0000-0000-000000000000', '771ee533-b358-4d22-a2ea-a2b33088f0f7', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-01 19:59:59.136218+00', ''),
	('00000000-0000-0000-0000-000000000000', '969c0d60-ae88-41c0-bb1b-626d3637494b', '{"action":"login","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-01 20:34:23.616878+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c9765b8d-b3f9-4fe5-9834-e84af5ba2f0b', '{"action":"login","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-02 19:34:31.452531+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4fcbcc9-e747-410d-90b8-3690e2897f67', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 20:09:54.576316+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ba2b258-6265-4790-9376-157a2951248f', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 20:09:54.576972+00', ''),
	('00000000-0000-0000-0000-000000000000', '88f697dc-4b99-4afb-bb23-c93be370d1ca', '{"action":"token_refreshed","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 20:28:12.521637+00', ''),
	('00000000-0000-0000-0000-000000000000', '9803390c-7a27-4de9-9b13-dabc549da993', '{"action":"token_revoked","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 20:28:12.522428+00', ''),
	('00000000-0000-0000-0000-000000000000', '4893ce3e-43a0-4e8f-9e69-0cc48997d3c6', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 20:32:39.068832+00', ''),
	('00000000-0000-0000-0000-000000000000', '773e6e83-54f8-4ebf-8242-d5afe723ee49', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 20:32:39.069571+00', ''),
	('00000000-0000-0000-0000-000000000000', '07f68c82-18ff-477d-8674-f9b26e951b52', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 22:45:31.636256+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a67170c2-db9b-4a4f-b1ce-8c492d868ee8', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-02 22:45:31.637217+00', ''),
	('00000000-0000-0000-0000-000000000000', '12ed55f4-2045-4d05-b79d-d02dc1a1e7d6', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 00:47:44.92514+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b71a9c62-fe07-422a-985e-b48ab6d8faf9', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 00:47:44.929707+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3009dcb-84bd-47b9-943e-fc4ed197b673', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 02:15:18.801746+00', ''),
	('00000000-0000-0000-0000-000000000000', '782d3696-a968-42a2-82c7-d5c6a3b6bd48', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 02:15:18.806461+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bf5e41b-521e-4aa8-8540-4acc50505748', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 04:43:25.720494+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0bee14d-1d20-438b-893e-2b00d9a0a3b9', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 04:43:25.733053+00', ''),
	('00000000-0000-0000-0000-000000000000', '904870e5-1bca-4728-8b2a-1a58d72fe9d5', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 05:41:25.999577+00', ''),
	('00000000-0000-0000-0000-000000000000', '91316f5b-9dad-4c37-a974-4aeb2de24d40', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 05:41:26.000325+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d9ae31a-7be9-414b-ba32-5b92826856fb', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 06:50:00.322976+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab64c8f6-7cb9-4853-8f2f-0813640bb5bc', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 06:50:00.326837+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dbd2034-9e4b-425f-aeb4-28f4b8db428a', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 07:48:13.993795+00', ''),
	('00000000-0000-0000-0000-000000000000', '657b4b45-6f62-49a2-ad97-2612ce4de53f', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 07:48:13.994715+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bcef21a-1b13-4c58-80f3-85cef5bd45e3', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 08:46:14.285275+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e56ea60b-fc6e-431b-9512-d87abed6d372', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 08:46:14.286298+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4857226-8b99-4805-a8a6-aec70afc09c7', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 09:44:28.101388+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f446521-933c-4953-bf37-5b932fd3664d', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 09:44:28.104503+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e41bdc01-53eb-446e-9a64-35d32135c13d', '{"action":"token_refreshed","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 09:50:10.697454+00', ''),
	('00000000-0000-0000-0000-000000000000', '499410ea-4060-4233-9ad3-f53e0d32a23e', '{"action":"token_revoked","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 09:50:10.698324+00', ''),
	('00000000-0000-0000-0000-000000000000', '8087a45c-2913-4026-b8ac-32e91bba97a8', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 10:42:31.560885+00', ''),
	('00000000-0000-0000-0000-000000000000', '94c570db-c590-4dde-ab8f-3def35ebb2a2', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 10:42:31.56358+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bf3a1ab-18c2-42f8-a2bb-2c0c423501a9', '{"action":"token_refreshed","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 10:48:22.628179+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7f5b3b6-8bef-45f3-8bcd-5e251c926177', '{"action":"token_revoked","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 10:48:22.628862+00', ''),
	('00000000-0000-0000-0000-000000000000', '8869b7a8-c738-45b1-9f66-14a30b28df66', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 11:40:54.848759+00', ''),
	('00000000-0000-0000-0000-000000000000', '709e9f03-ed25-4074-a8ba-e9fb15651198', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 11:40:54.849543+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbb751b0-1889-4760-beb2-ea3f49d4bb52', '{"action":"token_refreshed","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 11:46:23.012924+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d7e80a4-febb-4f84-819e-0728138830ee', '{"action":"token_revoked","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 11:46:23.01357+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5c94a6a-a883-4724-8031-d738dfc259c3', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 12:38:55.624195+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e18169ab-2397-42bc-ad61-d836a2b73fc9', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 12:38:55.625005+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f3d5d90-8a1a-420c-b86f-4f7391015eec', '{"action":"token_refreshed","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 12:44:23.472281+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1acc2a1-2a32-4904-bb18-d527281b52cf', '{"action":"token_revoked","actor_id":"9301cbaa-1cd1-4f24-bb41-51ce41650664","actor_username":"player@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 12:44:23.473237+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3da4d3c-54da-444f-9c5b-acd7d8d054d9', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 13:37:01.502665+00', ''),
	('00000000-0000-0000-0000-000000000000', '9787c578-24e3-425a-a660-89b05c34f79f', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 13:37:01.503382+00', ''),
	('00000000-0000-0000-0000-000000000000', '74869358-7bc2-40a8-80f0-89faa639ebde', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 14:35:02.883269+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3592e60-cbcf-44f4-bdaf-e3b82d41ec74', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 14:35:02.884163+00', ''),
	('00000000-0000-0000-0000-000000000000', '411e194e-82ae-4715-8e30-3b5d2e78dc12', '{"action":"token_refreshed","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 15:38:43.304486+00', ''),
	('00000000-0000-0000-0000-000000000000', '7fc515a5-5bb7-4781-9176-2a30d3c14b55', '{"action":"token_revoked","actor_id":"4908ef52-dc6a-4a86-9aa9-2324c8ff764b","actor_username":"trainer@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-05-03 15:38:43.305729+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '265f3d05-f61e-4cef-ad5c-52a2bcc703ef', 'authenticated', 'authenticated', 'no-teams@gmail.com', '$2a$10$ePOPbhrdMWpQtQ2QcviWquuQvUSVvjOHKXJI8PI/Lk2GmjKCcMMzm', '2024-05-01 14:16:27.800966+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-05-01 15:30:47.710698+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "265f3d05-f61e-4cef-ad5c-52a2bcc703ef", "email": "no-teams@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-05-01 14:16:27.791235+00', '2024-05-01 15:30:47.712423+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '9301cbaa-1cd1-4f24-bb41-51ce41650664', 'authenticated', 'authenticated', 'player@gmail.com', '$2a$10$hUjM.jPjqOvFct1cm6Hppe.Qwx8WG0r2Kjj15BnIWKnxedL0UYEUO', '2024-05-01 08:38:29.891561+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-05-01 20:34:23.61791+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-05-01 08:38:29.885533+00', '2024-05-03 12:44:23.475403+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', 'authenticated', 'authenticated', 'trainer@gmail.com', '$2a$10$WGOXEFqDP1W5GrJOCRUj7.YMkASTsObA6J34IIT5jAwkV/schRF3e', '2024-05-01 08:38:04.136608+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-05-02 19:34:31.456247+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-05-01 08:38:04.13217+00', '2024-05-03 15:38:43.309153+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('4908ef52-dc6a-4a86-9aa9-2324c8ff764b', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', '{"sub": "4908ef52-dc6a-4a86-9aa9-2324c8ff764b", "email": "trainer@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-05-01 08:38:04.133877+00', '2024-05-01 08:38:04.133904+00', '2024-05-01 08:38:04.133904+00', '8215dab6-e455-4427-abad-02e635133257'),
	('9301cbaa-1cd1-4f24-bb41-51ce41650664', '9301cbaa-1cd1-4f24-bb41-51ce41650664', '{"sub": "9301cbaa-1cd1-4f24-bb41-51ce41650664", "email": "player@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-05-01 08:38:29.887605+00', '2024-05-01 08:38:29.887644+00', '2024-05-01 08:38:29.887644+00', '87efbd78-43f3-4b40-a768-6dfd13943459'),
	('265f3d05-f61e-4cef-ad5c-52a2bcc703ef', '265f3d05-f61e-4cef-ad5c-52a2bcc703ef', '{"sub": "265f3d05-f61e-4cef-ad5c-52a2bcc703ef", "email": "no-teams@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-05-01 14:16:27.795646+00', '2024-05-01 14:16:27.795688+00', '2024-05-01 14:16:27.795688+00', 'e2104b12-da5a-4c6d-a29a-91000a715b4b');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('647016f8-ae80-4c4b-b022-198a400d65b8', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', '2024-05-01 18:57:35.820221+00', '2024-05-02 20:09:54.580709+00', NULL, 'aal1', NULL, '2024-05-02 20:09:54.580659', 'Expo/1017599 CFNetwork/1494.0.7 Darwin/23.4.0', '192.168.65.1', NULL),
	('d97650a6-08b2-4660-a326-6ea936cf428b', '9301cbaa-1cd1-4f24-bb41-51ce41650664', '2024-05-01 20:34:23.617951+00', '2024-05-03 12:44:23.476425+00', NULL, 'aal1', NULL, '2024-05-03 12:44:23.476363', 'okhttp/4.9.2', '192.168.65.1', NULL),
	('467c4b95-0dc4-4c83-94fa-ad43afb9888a', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', '2024-05-02 19:34:31.456291+00', '2024-05-03 15:38:43.310839+00', NULL, 'aal1', NULL, '2024-05-03 15:38:43.310759', 'Expo/2.30.10 CFNetwork/1474 Darwin/23.4.0', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('647016f8-ae80-4c4b-b022-198a400d65b8', '2024-05-01 18:57:35.823222+00', '2024-05-01 18:57:35.823222+00', 'password', '60e6a358-817a-49a9-9525-0608de0912ad'),
	('d97650a6-08b2-4660-a326-6ea936cf428b', '2024-05-01 20:34:23.619924+00', '2024-05-01 20:34:23.619924+00', 'password', '673c1950-7c81-4a5c-8c5b-79f38f05f01c'),
	('467c4b95-0dc4-4c83-94fa-ad43afb9888a', '2024-05-02 19:34:31.462267+00', '2024-05-02 19:34:31.462267+00', 'password', 'd7c75e9e-21a6-4edb-8941-c2bd55013149');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 18, 'jYA8plvxa_NaBEqhf9_M0g', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-01 18:57:35.8214+00', '2024-05-01 19:59:59.136966+00', NULL, '647016f8-ae80-4c4b-b022-198a400d65b8'),
	('00000000-0000-0000-0000-000000000000', 19, '6q5-ZoV2ffxsc5lsjIWRtA', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-01 19:59:59.137527+00', '2024-05-02 20:09:54.577824+00', 'jYA8plvxa_NaBEqhf9_M0g', '647016f8-ae80-4c4b-b022-198a400d65b8'),
	('00000000-0000-0000-0000-000000000000', 22, 'FADgjoTh3swPiVB1lOebTA', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', false, '2024-05-02 20:09:54.578551+00', '2024-05-02 20:09:54.578551+00', '6q5-ZoV2ffxsc5lsjIWRtA', '647016f8-ae80-4c4b-b022-198a400d65b8'),
	('00000000-0000-0000-0000-000000000000', 20, 'XoIc9dJ6gKUIMEkd1xkxow', '9301cbaa-1cd1-4f24-bb41-51ce41650664', true, '2024-05-01 20:34:23.618841+00', '2024-05-02 20:28:12.523065+00', NULL, 'd97650a6-08b2-4660-a326-6ea936cf428b'),
	('00000000-0000-0000-0000-000000000000', 21, 'NmG3m0cT-36HIk9gb47LRw', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-02 19:34:31.45988+00', '2024-05-02 20:32:39.070432+00', NULL, '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 24, 'kAXju06y86kilizmOAM8Jg', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-02 20:32:39.070842+00', '2024-05-02 22:45:31.638234+00', 'NmG3m0cT-36HIk9gb47LRw', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 25, 'Jz4YuWh0n2GXwOSKx5Uajg', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-02 22:45:31.638818+00', '2024-05-03 00:47:44.931247+00', 'kAXju06y86kilizmOAM8Jg', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 26, 'd9lsfTh4AvTIdmEj61fvmw', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 00:47:44.93315+00', '2024-05-03 02:15:18.808226+00', 'Jz4YuWh0n2GXwOSKx5Uajg', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 27, 'SnWYuL4Ghvx-sekdyazrew', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 02:15:18.812629+00', '2024-05-03 04:43:25.736816+00', 'd9lsfTh4AvTIdmEj61fvmw', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 28, 'XMOPCB1Q3mtlW4R3lFTQ5g', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 04:43:25.741707+00', '2024-05-03 05:41:26.001107+00', 'SnWYuL4Ghvx-sekdyazrew', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 29, 'zIc9-crYVMlOo_yRO6vRWQ', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 05:41:26.001572+00', '2024-05-03 06:50:00.328002+00', 'XMOPCB1Q3mtlW4R3lFTQ5g', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 62, 'LWaJGyJEkxsuHbPbFpl2eQ', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 06:50:00.328981+00', '2024-05-03 07:48:13.995426+00', 'zIc9-crYVMlOo_yRO6vRWQ', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 63, 'YLCA4n_EcL4Mou6I1hd3dw', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 07:48:13.995795+00', '2024-05-03 08:46:14.28721+00', 'LWaJGyJEkxsuHbPbFpl2eQ', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 64, '4sbnwAoDUn3aLxeXI49Zgg', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 08:46:14.287585+00', '2024-05-03 09:44:28.105195+00', 'YLCA4n_EcL4Mou6I1hd3dw', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 23, 'AoJEbq_AebHdnSlx5q6QjA', '9301cbaa-1cd1-4f24-bb41-51ce41650664', true, '2024-05-02 20:28:12.523633+00', '2024-05-03 09:50:10.699157+00', 'XoIc9dJ6gKUIMEkd1xkxow', 'd97650a6-08b2-4660-a326-6ea936cf428b'),
	('00000000-0000-0000-0000-000000000000', 65, 'xfNXp9nHqBPrRIiBCuCxkg', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 09:44:28.106051+00', '2024-05-03 10:42:31.564153+00', '4sbnwAoDUn3aLxeXI49Zgg', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 66, 'EPrLsjp-Xe-2ATqFIo82yA', '9301cbaa-1cd1-4f24-bb41-51ce41650664', true, '2024-05-03 09:50:10.699543+00', '2024-05-03 10:48:22.629487+00', 'AoJEbq_AebHdnSlx5q6QjA', 'd97650a6-08b2-4660-a326-6ea936cf428b'),
	('00000000-0000-0000-0000-000000000000', 67, 'ei7kn9P4UaxWTBdPBK1IEw', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 10:42:31.564479+00', '2024-05-03 11:40:54.850358+00', 'xfNXp9nHqBPrRIiBCuCxkg', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 68, '1IJ7XOWk9iSdu36f_bCw6w', '9301cbaa-1cd1-4f24-bb41-51ce41650664', true, '2024-05-03 10:48:22.629804+00', '2024-05-03 11:46:23.014257+00', 'EPrLsjp-Xe-2ATqFIo82yA', 'd97650a6-08b2-4660-a326-6ea936cf428b'),
	('00000000-0000-0000-0000-000000000000', 69, 'baE-gVglOS2whAsvuw1MrA', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 11:40:54.8507+00', '2024-05-03 12:38:55.62575+00', 'ei7kn9P4UaxWTBdPBK1IEw', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 70, 'GYuIRqdQFLf3glOWZhgkgQ', '9301cbaa-1cd1-4f24-bb41-51ce41650664', true, '2024-05-03 11:46:23.01467+00', '2024-05-03 12:44:23.474109+00', '1IJ7XOWk9iSdu36f_bCw6w', 'd97650a6-08b2-4660-a326-6ea936cf428b'),
	('00000000-0000-0000-0000-000000000000', 72, '8Bag6PzOafOW4kexberTQg', '9301cbaa-1cd1-4f24-bb41-51ce41650664', false, '2024-05-03 12:44:23.474428+00', '2024-05-03 12:44:23.474428+00', 'GYuIRqdQFLf3glOWZhgkgQ', 'd97650a6-08b2-4660-a326-6ea936cf428b'),
	('00000000-0000-0000-0000-000000000000', 71, 'U8nfJQK7B7g-kGYhYgvbsg', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 12:38:55.626071+00', '2024-05-03 13:37:01.504162+00', 'baE-gVglOS2whAsvuw1MrA', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 73, 'x0iMttKm4GCY6RrE-tKOoA', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 13:37:01.504484+00', '2024-05-03 14:35:02.884892+00', 'U8nfJQK7B7g-kGYhYgvbsg', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 74, 'Nc7FZe468n3LeRr1rxAMxQ', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', true, '2024-05-03 14:35:02.885235+00', '2024-05-03 15:38:43.307001+00', 'x0iMttKm4GCY6RrE-tKOoA', '467c4b95-0dc4-4c83-94fa-ad43afb9888a'),
	('00000000-0000-0000-0000-000000000000', 75, 'Wkk9rKsMWrnbyDoI1qd57w', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', false, '2024-05-03 15:38:43.307581+00', '2024-05-03 15:38:43.307581+00', 'Nc7FZe468n3LeRr1rxAMxQ', '467c4b95-0dc4-4c83-94fa-ad43afb9888a');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: cancelation_reason; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."team" ("id", "name", "icon") VALUES
	('15f9e934-76ef-4697-bde7-c361305d00a9', 'Industrie Turicum', 'logo.jpeg'),
	('72fa36b0-d565-49f3-95df-397ed2bff801', 'FC Zürich', 'logo.png'),
	('a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Red Dragons', 'logo.jpg');


--
-- Data for Name: chat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."chat" ("id", "team_id", "name") VALUES
	('fc9ee84b-29f7-4d07-8f45-d76814ef53e5', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Chat for Red Dragons'),
	('1981ee96-1002-44f9-b449-4bb010a4c29e', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Chat for Golden Eagles'),
	('485f5cf3-7983-49d7-8bb2-371d63da887d', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Chat for Silver Foxes');


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profile" ("user_id", "first_name", "last_name") VALUES
	('4908ef52-dc6a-4a86-9aa9-2324c8ff764b', 'Marvin T', 'Kramer'),
	('9301cbaa-1cd1-4f24-bb41-51ce41650664', 'Marvin S', 'Kramer');


--
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."player" ("id", "team_id", "name", "birthdate") VALUES
	('73f2305a-96b6-4278-b665-1642ca57531b', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Mason Johnson', '2002-10-11'),
	('feb6ba97-b099-4480-b4c4-f07461264fd6', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Ethan Williams', '1999-07-08'),
	('398ff98e-4f01-4bb2-b635-e4bd546ec690', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Lucas Williams', '1986-06-01'),
	('fc93e8d6-c605-4ad0-a185-f75aa0286897', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Ethan Brown', '1980-07-22'),
	('e5ea9214-409e-44ad-86d8-ebb6bce9de61', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Lucas Brown', '1987-05-04'),
	('c3a7b1a2-0567-4969-a814-b2cd4fd4a273', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Sophia Johnson', '1993-06-13'),
	('d3af81a4-d617-498b-aae3-444cb341c986', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Emma Smith', '1996-05-31'),
	('5bc6ece2-4ceb-4c17-b3be-01a0d5a80154', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Mia Brown', '1996-03-26'),
	('0c0c1100-7f3b-41de-8e36-e03593c2244c', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Ethan Williams', '1988-06-04'),
	('04a9ac71-e764-47be-b919-b04c39350a5e', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Sophia Smith', '1996-10-11'),
	('70e90991-aa7d-43c6-85c4-5a3f726e88f7', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Emma Williams', '1991-09-06'),
	('2c212872-5e43-49d5-a18b-429f34a66524', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Liam Miller', '1984-01-22'),
	('5245957f-ef49-4ebc-8028-acfe088acbeb', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Olivia Williams', '1986-09-04'),
	('48cc3e9f-eef2-4e79-888b-2a58b2aa331a', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Emma Miller', '1984-08-08'),
	('838297b9-ef57-4eb6-b607-3b45daa49b19', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Amelia Wilson', '1986-05-14'),
	('f43b28a5-239c-4ceb-843c-aff4a201312b', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Mia Smith', '2004-03-05'),
	('288b5990-a101-4eb0-a5a7-9bdde2fc86a7', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Liam Miller', '1984-11-18'),
	('a0e0e446-2b90-4a16-8fa0-87a1d2276ae6', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Lucas Garcia', '2004-12-07'),
	('693404d8-e2f1-4c46-b060-9b219bf648db', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Sophia Miller', '1997-05-04'),
	('821e400b-fb47-445e-9476-eaf5d13cf8ef', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Ethan Smith', '1999-01-04'),
	('d784a7b9-9e16-41d9-9e11-a4fb4a9c1d8e', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Amelia Williams', '1996-01-13');


--
-- Data for Name: player_event; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: profile_team; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profile_team" ("team_id", "profile_id", "player_id", "role") VALUES
	('72fa36b0-d565-49f3-95df-397ed2bff801', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', NULL, 'TRAINER'),
	('15f9e934-76ef-4697-bde7-c361305d00a9', '4908ef52-dc6a-4a86-9aa9-2324c8ff764b', '73f2305a-96b6-4278-b665-1642ca57531b', 'CONTACT_PERSON'),
	('a862fc42-53f8-485e-841c-da6ae7dcc6ea', '9301cbaa-1cd1-4f24-bb41-51ce41650664', 'e5ea9214-409e-44ad-86d8-ebb6bce9de61', 'PLAYER');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('teams', 'teams', NULL, '2024-05-03 09:46:24.523592+00', '2024-05-03 09:46:24.523592+00', false, false, 5242880, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id") VALUES
	('f0419f8b-5547-43b2-8b22-5bfe49648f65', 'teams', '15f9e934-76ef-4697-bde7-c361305d00a9/logo.jpeg', NULL, '2024-05-03 09:50:49.778661+00', '2024-05-03 09:51:08.78347+00', '2024-05-03 09:50:49.778661+00', '{"eTag": "\"97862c223fae4e4efbb01930a7bccf49\"", "size": 848661, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-05-03T09:51:08.769Z", "contentLength": 848661, "httpStatusCode": 200}', 'e4e0e984-8018-47e2-81c9-87b65fbd53b8', NULL),
	('a9323243-c16a-4178-812b-bec375e9ee82', 'teams', '72fa36b0-d565-49f3-95df-397ed2bff801/logo.png', NULL, '2024-05-03 09:55:13.231448+00', '2024-05-03 09:55:32.616642+00', '2024-05-03 09:55:13.231448+00', '{"eTag": "\"4c0d22f48f2969b2641899f7cd55122d\"", "size": 77996, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-05-03T09:55:32.610Z", "contentLength": 77996, "httpStatusCode": 200}', '7fd3426c-3742-43f1-9709-3230971e6f8c', NULL),
	('f886818c-7077-40d8-a3d2-e1dfcc425d27', 'teams', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea/logo.jpg', NULL, '2024-05-03 09:57:26.69012+00', '2024-05-03 09:57:26.69012+00', '2024-05-03 09:57:26.69012+00', '{"eTag": "\"ba63bece750b4682d9d579fae1911549\"", "size": 48566, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-05-03T09:57:26.685Z", "contentLength": 48566, "httpStatusCode": 200}', '0caaf810-a201-4bc1-9502-1a648a3940f0', NULL);


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 107, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
