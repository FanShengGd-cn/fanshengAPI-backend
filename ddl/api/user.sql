create table api.user
(
    id           bigint                                 not null
        primary key,
    userAccount  varchar(255)                           null,
    userPassword varchar(255)                           null,
    unionId      int                                    null,
    mpOpenId     int                                    null,
    userName     varchar(255)                           null,
    userAvatar   varchar(255)                           null,
    userProfile  varchar(255)                           null,
    userRole     varchar(255)                           null,
    createTime   datetime   default current_timestamp() not null,
    updateTime   datetime   default current_timestamp() not null on update current_timestamp(),
    isDelete     tinyint(1) default 0                   not null
)
    engine = InnoDB;

