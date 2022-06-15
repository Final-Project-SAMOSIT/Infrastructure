CREATE TABLE admins (
    admin_id    VARCHAR(40) NOT NULL PRIMARY KEY,
    admin_user  VARCHAR(50) NOT NULL,
    admin_pass  VARCHAR(50) NOT NULL
);

CREATE TABLE pet_types (
    pet_type_id    VARCHAR(40) NOT NULL PRIMARY KEY,
    pet_type_name  VARCHAR(100) NOT NULL
);

CREATE TABLE roles (
    role_id    VARCHAR(40) NOT NULL PRIMARY KEY,
    role_name  VARCHAR(20) NOT NULL
);

CREATE TABLE status (
    status_id           VARCHAR(40) NOT NULL PRIMARY KEY,
    status_name         VARCHAR(50) NOT NULL,
    status_description  VARCHAR(100)
);

CREATE TABLE std_position (
    position_id    VARCHAR(40) NOT NULL PRIMARY KEY,
    position_name  VARCHAR(50) NOT NULL
);

CREATE TABLE union_year (
    year_id    VARCHAR(40) NOT NULL PRIMARY KEY,
    year_name  VARCHAR(10) NOT NULL
);

CREATE TABLE user_details (
    user_id    VARCHAR(20) NOT NULL PRIMARY KEY,
    user_type  VARCHAR(20),
    name_th    VARCHAR(50),
    name_en    VARCHAR(50),
    email      VARCHAR(50),
    role_id    VARCHAR(40) NOT NULL
);

CREATE TABLE news (
    new_id       VARCHAR(40) NOT NULL PRIMARY KEY,
    new_topic    VARCHAR(100) NOT NULL,
    new_details  VARCHAR(500),
    new_date     DATE NOT NULL,
    new_img      VARCHAR(100) NOT NULL,
    user_id      VARCHAR(20) NOT NULL
);

CREATE TABLE petition (
    pet_id       VARCHAR(40) NOT NULL PRIMARY KEY,
    pet_topic    VARCHAR(100) NOT NULL,
    pet_details  VARCHAR(500) NOT NULL,
    pet_date     DATE NOT NULL,
    user_id      VARCHAR(20) NOT NULL,
    type_id      VARCHAR(40) NOT NULL,
    status_id    VARCHAR(40) NOT NULL
);

CREATE TABLE student_union_info (
    std_id     VARCHAR(20) NOT NULL PRIMARY KEY, 
    std_fname  VARCHAR(50),
    std_lname  VARCHAR(50),
    std_major  VARCHAR(50),
    std_img    VARCHAR(100) NOT NULL
);

CREATE TABLE student_union (
    union_id     VARCHAR(40) NOT NULL PRIMARY KEY,
    std_id       VARCHAR(20) NOT NULL,
    year_id      VARCHAR(40) NOT NULL,
    position_id  VARCHAR(40) NOT NULL
);



ALTER TABLE news
    ADD CONSTRAINT news_user_details_fk FOREIGN KEY ( user_id )
        REFERENCES user_details ( user_id );

ALTER TABLE petition
    ADD CONSTRAINT petition_status_fk FOREIGN KEY ( status_id )
        REFERENCES status ( status_id );

ALTER TABLE petition
    ADD CONSTRAINT petition_types_fk FOREIGN KEY ( type_id )
        REFERENCES pet_types ( pet_type_id );

ALTER TABLE petition
    ADD CONSTRAINT petition_user_details_fk FOREIGN KEY ( user_id )
        REFERENCES user_details ( user_id );

ALTER TABLE student_union
    ADD CONSTRAINT student_union_info_fk FOREIGN KEY ( std_id )
        REFERENCES student_union_info ( std_id );

ALTER TABLE student_union
    ADD CONSTRAINT student_union_position_fk FOREIGN KEY ( position_id )
        REFERENCES std_position ( position_id );

ALTER TABLE student_union
    ADD CONSTRAINT student_union_year_fk FOREIGN KEY ( year_id )
        REFERENCES union_year ( year_id );

ALTER TABLE user_details
    ADD CONSTRAINT user_details_roles_fk FOREIGN KEY ( role_id )
        REFERENCES roles ( role_id ) ;