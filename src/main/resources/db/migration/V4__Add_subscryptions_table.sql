create table user_subscriptions(
    chanel_id int8 not null references usr,
    subscriber_id int8 not null references usr,
    primary key (chanel_id, subscriber_id)
)