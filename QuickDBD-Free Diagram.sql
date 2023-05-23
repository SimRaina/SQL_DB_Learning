-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/WZbx6O
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Employee` (
    `ID` int  NOT NULL ,
    `Name` varchar(30)  NOT NULL ,
    `Designation` varchar(30)  NOT NULL ,
    PRIMARY KEY (
        `ID`
    )
);

CREATE TABLE `Department` (
    `ID` int  NOT NULL ,
    `DeptName` varchar(30)  NOT NULL ,
    `EmployeeID` int  NOT NULL ,
    PRIMARY KEY (
        `ID`
    )
);

ALTER TABLE `Department` ADD CONSTRAINT `fk_Department_EmployeeID` FOREIGN KEY(`EmployeeID`)
REFERENCES `Employee` (`ID`);

