CREATE TABLE Movies (
    MID int NOT NULL PRIMARY KEY, 
    Name varchar(35) NOT NULL,
    director varchar(30),
    duration int,
    Time_Produce date,
    Rate DECIMAL(2,1)
);

CREATE TABLE Stars (
    SID int, 
    FName varchar(20) NOT NULL,
    LNAME varchar(20) NOT NULL,
    birthday date,
    MID_ACT int,
    IS_Star varchar(1) NOT NULL CHECK(IS_Star IN ('Y','N')), 
    Primary key (SID, MID_ACT),
    FOREIGN KEY (MID_ACT) REFERENCES Movies(MID)
);

CREATE TABLE GENRE (
    MID int, 
    Type varchar(20),
    Primary key (MID, Type),
    FOREIGN KEY (MID) REFERENCES Movies(MID)
);

CREATE TABLE CUSTOMER (
    CID int NOT NULL PRIMARY KEY,
    FName varchar(20),
    LNAME varchar(20)
);

CREATE TABLE SELL(
    CID int,
    MID int,
    Sell_Date Date NOT NULL PRIMARY KEY,
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    FOREIGN KEY (CID) REFERENCES CUSTOMER(CID)
);

CREATE TABLE RENT(
    CID int,
    MID int,
    Rent_Date Date,
    Primary key (CID, Rent_Date),
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    FOREIGN KEY (CID) REFERENCES CUSTOMER(CID)
);

CREATE TABLE Login_CUS(
	LID int NOT NULL PRIMARY KEY,
    UserName varchar(20),
    Password varchar(20),
    IS_Active varchar(1) NOT NULL CHECK(IS_Active IN ('Y','N')),
    CID int,
    FOREIGN KEY (CID) REFERENCES CUSTOMER(CID)
);

CREATE TABLE Login_EMP(
    LID int NOT NULL PRIMARY KEY,
    UserName varchar(20),
    Password varchar(20),
    IS_Active varchar(1) NOT NULL CHECK(IS_Active IN ('Y','N'))
);

CREATE SEQUENCE CUS_SEQ_SignUP
 START WITH     4
 INCREMENT BY   1;

 drop table Login_EMP;
 drop table Login_CUS;
 drop table RENT;
 drop table SELL;
 drop table CUSTOMER;
 drop table GENRE;
 drop table Stars;
 drop table Movies;


