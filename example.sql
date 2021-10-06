CREATE TABLE ATHLETES(
aid integer primary key,
name char(30) not null
);

CREATE TABLE OLYMPICS(
oid integer primary key,
);

CREATE TABLE COMPETES(
aid integer,
oid integer,
primary key (aid),
foreign key (oid) references OLYMPICS(oid)
);

insert into ATHLETES (aid, name) values (1, "amy");
insert into ATHLETES (aid, name) values (2, "charles");
insert into ATHLETES (aid, name) values (3, "jerry");
insert into ATHLETES (aid, name) values (4, "henry");
insert into ATHLETES (aid, name) values (5, "ben");

insert into OLYMPICS values (1);
insert into OLYMPICS values (2);
insert into OLYMPICS values (3);

insert into COMPETES (oid, aid) values (1,1);
insert into COMPETES (oid, aid) values (1,2);
insert into COMPETES (oid, aid) values (1,3);
insert into COMPETES (oid, aid) values (1,4);
insert into COMPETES (oid, aid) values (1,5);
insert into COMPETES (oid, aid) values (2,1);
insert into COMPETES (oid, aid) values (2,3);
insert into COMPETES (oid, aid) values (2,4);
insert into COMPETES (oid, aid) values (2,5);

select * from competes;
