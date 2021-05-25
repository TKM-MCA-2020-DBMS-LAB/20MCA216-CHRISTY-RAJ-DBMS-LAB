CREATE DATABASE Bank;
use Bank;
...........CUSTOMER..............
create table Customer(cid int not null auto_increment,cname varchar(100),loc varchar(100),sex varchar(10),dob date,primary key(cid));
.................BANK_BRN..................
 -- create table Bank_brn(bcode int not null,bloc varchar(100),bsate varchar(100),primary key(bcode));
 ..............DEPOSIT.................
create table Deposit(Dacno int not null,dtype varchar(100),ddate date,damt int,primary key(Dacno));
.....................LOAN.................
create table Loan(Lacno int,ltype varchar(100),ldate date,lamt int,primary key(Lacno));
........................ACCOUNT_IN.................
 -- create table Accounts_in(Bcode varchar(100),cid int);
 -- ..........................DEPOSITOR...................
create table Depositor(cid int ,dacno int); 
...................BORROWER....................
create table Borrower(cid int,lacno int);
 -- show tables;
 -- describe Customer;
 -- describe Bank_brn;
 -- describe Deposit;
 describe Loan;
 describe Accounts_in;
 describe Depositor;
 describe Borrower;
 drop table Customer;	