--changeset number:2
CREATE SCHEMA example;
--rollback drop schema example; 

--changeset number:2
create table example.hello (  
    id int primary key,
    name varchar(255)  
);
--rollback drop table example.hello; 

--changeset number:3
insert into example.hello (id, name) values (1, 'SOFTSWISS');
--rollback delete from example.hello where id=1
