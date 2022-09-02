USE fair;

CREATE TABLE IF NOT EXISTS user (
    id int not null auto_increment,
    login varchar(255) not null,
    hash varchar(255) not null,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS district (
    id int not null auto_increment,
    code int not null,
    code_subprefecture int not null,
    areap int not null,
    name varchar(255) not null,
    region5 varchar(255) not null,
    region8 varchar(255) not null,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS fair (
    id int not null auto_increment,
    setcens int not null,
    name varchar(255) not null,
    register varchar(255) not null,
    id_district int not null,
    PRIMARY KEY (id),
    FOREIGN KEY (id_district) REFERENCES district(id)
);

CREATE TABLE IF NOT EXISTS address (
    id int not null auto_increment,
    street varchar(255) not null,
    number varchar(255) null,
    neighborhood varchar(255) not null,
    reference varchar(255) null,
    coordinates point not null,
    id_fair int not null,
    PRIMARY KEY (id),
    FOREIGN KEY (id_fair) REFERENCES fair(id)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;