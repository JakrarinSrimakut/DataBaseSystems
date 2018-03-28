--UNIT TESTS FOR FOREIGN KEY CONSTRAINTS

--ERROR:  insert or update on table "irsagents" violates foreign key constraint "irsagents_taxpayerid_fkey"
--DETAIL:  Key (taxpayerid)=(117) is not present in table "individuals".
INSERT INTO IRSagents
VALUES('ABCDEF',117,1,TRUE);

--ERROR:  insert or update on table "delinquents" violates foreign key constraint "delinquents_irsagentid_fkey"
--DETAIL:  Key (irsagentid)=(ABCDEF) is not present in table "irsagents".
INSERT INTO Delinquents
VALUES(113,'ABCDEF',112);

--ERROR:  insert or update on table "delinquents" violates foreign key constraint "delinquents_collectionagencyid_fkey"
--DETAIL:  Key (collectionagencyid)=(190) is not present in table "businesses".
INSERT INTO Delinquents
VALUES(110,'A4DV57',190);

--UNIT TEST FOR GENERAL CONSTRAINTS

--Passes amountPaid >= 0
UPDATE Payments
SET amountPaid = 1.00
WHERE taxpayerID = 112 AND datePaid ='03/05/2017';

--ERROR:  new row for relation "payments" violates check constraint "positive_payments"
--DETAIL:  Failing row contains (112, 2017-03-05, -1.00).
UPDATE Payments
SET amountPaid = -1.00
WHERE taxpayerID = 112 AND datePaid ='03/05/2017';

--Passes lastDateFile >= LastDatePaid
UPDATE Businesses
SET lastDateFiled='02/11/2017'
WHERE taxpayerID=107;

--ERROR:  new row for relation "businesses" violates check constraint "businesses_check"
--DETAIL:  Failing row contains (107, Velit Dui Semper Consulting, Ap #266-4576 Nulla Av., P, 2017-02-10, 2017-02-11, 1845194.46).
UPDATE Businesses
SET lastDateFiled='02/10/2017'
WHERE taxpayerID=107;

--Passes jobLevel is NULL then active is NULL
UPDATE IRSagents
SET jobLevel = NULL, active = NULL
WHERE IRSagentID='A4DV57';

--ERROR:  new row for relation "irsagents" violates check constraint "irsagents_check"
--DETAIL:  Failing row contains (A4DV57, 110, null, t).
UPDATE IRSagents
SET jobLevel = NULL, active = TRUE
WHERE IRSagentID='A4DV57';

--Passes taxpayerID <> spouseID
UPDATE Individuals
SET spouseID=112
WHERE taxpayerID = 110;

--ERROR:  new row for relation "individuals" violates check constraint "individuals_check"
--DETAIL:  Failing row contains (110, Jin Huff, 843 Ante Ave, 110, 2016-01-03, 2016-12-11, 18767.55).
UPDATE Individuals
SET spouseID=110
WHERE taxpayerID = 110;

