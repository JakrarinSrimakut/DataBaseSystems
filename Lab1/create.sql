DROP SCHEMA Lab1 CASCADE;
CREATE SCHEMA Lab1;

CREATE TABLE TaxReturns(
  taxpayerID  INT,
  taxYear  INT,
  kind  CHAR(1),
  dateFiled  DATE,
  income  DECIMAL(11,2),
  taxOwed  DECIMAL(11,2),
  PRIMARY KEY(taxpayerID,taxYear)
);

CREATE TABLE Payments(
  taxpayerID  INT,
  datePaid  DATE,
  amountPaid  DECIMAL(11,2),
  PRIMARY KEY(taxpayerID,datePaid)
);

CREATE TABLE Individuals(
  taxpayerID  INT,
  name  VARCHAR(30),
  address  VARCHAR(30),
  spouseID  INT,
  lastDateFiled  DATE,
  lastDatePaid  DATE,
  totalTaxOwed  DECIMAL(11,2),
  PRIMARY KEY(taxpayerID)
);

CREATE TABLE Businesses(
  taxpayerID  INT,
  name  VARCHAR(30),
  address  VARCHAR(30),
  businessType  CHAR(1),
  lastDateFiled  DATE,
  lastDatePaid  DATE,
  totalTaxOwed  DECIMAL(11,2),
  PRIMARY KEY(taxpayerID)
);


CREATE TABLE IRSagents(
  IRSagentID  CHAR(6),
  taxpayerID  INT,
  jobLevel  INT,
  active  BOOLEAN,
  PRIMARY KEY(IRSagentID)
);

CREATE TABLE Delinquents(
  taxpayerID  INT,
  IRSagentID CHAR(6),
  collectionAgencyID INT,
  PRIMARY KEY(taxpayerID)
);

