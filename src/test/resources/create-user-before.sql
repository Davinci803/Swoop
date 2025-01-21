delete from user_role;
delete from usr;

insert into usr(id, username, password, active) values
        (1, 'admin', '$2a$08$UiClqaTAtJHmhYiBKWsdRu54xM0ozkC15CaOgn8qavFL7O2bjYEnm', true),
        (2, '2', '$2a$08$6ZBdnXGJO512wLxlt0wsw.szJovaQRF622OOEtSpOycOkvwBWnbqi', true);

insert into user_role(user_id, roles) values
        (1, 'ADMIN'), (1, 'USER'),
        (2, 'USER');