CREATE DATABASE BookLibrary
go
USE BookLibrary
go

CREATE TABLE Book (
BookCode INT,
BookTitle varchar(100)NOT NULL,
Author varchar(50)NOT NULL,
Edition INT,
BookPrice money,
Copies INT,
CONSTRAINT dkm PRIMARY KEY (BookCode)
)
GO
SELECT * FROM Book
GO
INSERT INTO Book (BookCode,BookTitle,Author,Edition,BookPrice,Copies) values (1,N'thanh xuân',N'nguyễn văn a',2,50,3)
INSERT INTO Book (BookCode,BookTitle,Author,Edition,BookPrice,Copies) values (2,N'thanh xuân',N'trần văn b',2,50,3)
INSERT INTO Book (BookCode,BookTitle,Author,Edition,BookPrice,Copies) values (3,N'thanh xuân',N'phạm văn c',2,50,3)
INSERT INTO Book (BookCode,BookTitle,Author,Edition,BookPrice,Copies) values (4,N'đọc hành',N'nguyễn văn d',2,50,3)
GO

CREATE TABLE Member
(
MemberCode INT,
Name VARCHAR(50)NOT NULL,
Address VARCHAR (100)NOT NULL,
PhoneNumber INT
CONSTRAINT mem PRIMARY KEY (MemberCode)
)
GO
INSERT INTO Member (MemberCode,Name,Address,PhoneNumber) Values (1,N'Phạm văn a','ha noi',190)
INSERT INTO Member (MemberCode,Name,Address,PhoneNumber) Values (2,N'Phạm văn b','ha noi',195)
INSERT INTO Member (MemberCode,Name,Address,PhoneNumber) Values (3,N'Phạm văn c','ha noi',197)
INSERT INTO Member (MemberCode,Name,Address,PhoneNumber) Values (4,N'Phạm văn d','ha noi',199)
GO

CREATE TABLE IssueDetails
(
BookCode Int,
CONSTRAINT dkm FOREIGN KEY ( BookCode ) references Book (BookCode),
MemberCode INT,
CONSTRAINT DDM FOREIGN KEY (MemberCode) references Member (MemberCode),
IssueDate datetime,
ReturnDate datetime
)
GO