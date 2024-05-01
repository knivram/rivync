-- Teams
INSERT INTO "team" (id, name, icon)
VALUES ('72fa36b0-d565-49f3-95df-397ed2bff801', 'Red Dragons', 'icon_red_dragons.png');
INSERT INTO "team" (id, name, icon)
VALUES ('15f9e934-76ef-4697-bde7-c361305d00a9', 'Golden Eagles', 'icon_golden_eagles.png');
INSERT INTO "team" (id, name, icon)
VALUES ('a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Silver Foxes', 'icon_silver_foxes.png');
-- Players
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('73f2305a-96b6-4278-b665-1642ca57531b', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Mason Johnson', '2002-10-11');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('feb6ba97-b099-4480-b4c4-f07461264fd6', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Ethan Williams', '1999-07-08');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('398ff98e-4f01-4bb2-b635-e4bd546ec690', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Lucas Williams', '1986-06-01');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('fc93e8d6-c605-4ad0-a185-f75aa0286897', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Ethan Brown', '1980-07-22');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('e5ea9214-409e-44ad-86d8-ebb6bce9de61', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Lucas Brown', '1987-05-04');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('c3a7b1a2-0567-4969-a814-b2cd4fd4a273', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Sophia Johnson', '1993-06-13');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('d3af81a4-d617-498b-aae3-444cb341c986', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Emma Smith', '1996-05-31');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('5bc6ece2-4ceb-4c17-b3be-01a0d5a80154', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Mia Brown', '1996-03-26');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('0c0c1100-7f3b-41de-8e36-e03593c2244c', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Ethan Williams', '1988-06-04');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('04a9ac71-e764-47be-b919-b04c39350a5e', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Sophia Smith', '1996-10-11');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('70e90991-aa7d-43c6-85c4-5a3f726e88f7', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Emma Williams', '1991-09-06');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('2c212872-5e43-49d5-a18b-429f34a66524', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Liam Miller', '1984-01-22');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('5245957f-ef49-4ebc-8028-acfe088acbeb', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Olivia Williams',
        '1986-09-04');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('48cc3e9f-eef2-4e79-888b-2a58b2aa331a', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Emma Miller', '1984-08-08');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('838297b9-ef57-4eb6-b607-3b45daa49b19', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Amelia Wilson', '1986-05-14');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('f43b28a5-239c-4ceb-843c-aff4a201312b', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Mia Smith', '2004-03-05');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('288b5990-a101-4eb0-a5a7-9bdde2fc86a7', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Liam Miller', '1984-11-18');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('a0e0e446-2b90-4a16-8fa0-87a1d2276ae6', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Lucas Garcia', '2004-12-07');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('693404d8-e2f1-4c46-b060-9b219bf648db', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Sophia Miller', '1997-05-04');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('821e400b-fb47-445e-9476-eaf5d13cf8ef', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Ethan Smith', '1999-01-04');
INSERT INTO "player" (id, team_id, name, birthdate)
VALUES ('d784a7b9-9e16-41d9-9e11-a4fb4a9c1d8e', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Amelia Williams',
        '1996-01-13');

-- Chats
INSERT INTO "chat" (id, team_id, name)
VALUES ('fc9ee84b-29f7-4d07-8f45-d76814ef53e5', '72fa36b0-d565-49f3-95df-397ed2bff801', 'Chat for Red Dragons');
INSERT INTO "chat" (id, team_id, name)
VALUES ('1981ee96-1002-44f9-b449-4bb010a4c29e', '15f9e934-76ef-4697-bde7-c361305d00a9', 'Chat for Golden Eagles');
INSERT INTO "chat" (id, team_id, name)
VALUES ('485f5cf3-7983-49d7-8bb2-371d63da887d', 'a862fc42-53f8-485e-841c-da6ae7dcc6ea', 'Chat for Silver Foxes');
