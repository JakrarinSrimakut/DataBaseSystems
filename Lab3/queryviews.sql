--SELECT *
--FROM Delinquents;

--SELECT *
--FROM TaxDebts;

--SELECT *
--FROM paymentCredits;

SELECT d.taxpayerID, debt, credit
FROM Delinquents d
INNER JOIN TaxDebts t ON
  d.taxpayerID = t.taxpayerID
INNER JOIN PaymentCredits p ON
  d.taxpayerID = p.taxpayerID;

-- taxpayerid |   debt    |  credit   
------------+-----------+-----------
--        112 | 112765.00 | 122878.93
--(1 row)

--SELECT *
--FROM TaxReturns;

--DELETE FROM TaxReturns
--WHERE taxpayerID = 112 AND taxYear = 2016;

--DELETE FROM TaxReturns
--WHERE taxpayerID = 116 AND taxYear = 2017;

SELECT d.taxpayerID, debt, credit
FROM Delinquents d
INNER JOIN TaxDebts t ON
  d.taxpayerID = t.taxpayerID
INNER JOIN PaymentCredits p ON
  d.taxpayerID = p.taxpayerID;

-- taxpayerid | debt | credit 
------------+------+--------
--(0 rows)

