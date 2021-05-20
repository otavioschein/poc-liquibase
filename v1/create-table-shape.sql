--liquibase formatted sql

--Database: guitars
CREATE TABLE shape (
    ID NUMERIC(5,0) NOT NULL PRIMARY KEY,
    NAME VARCHAR(10) NOT NULL
);
