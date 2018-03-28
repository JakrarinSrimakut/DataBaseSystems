--SELECT *
--FROM TaxReturns;

CREATE VIEW TaxDebts AS
SELECT taxpayerID, SUM(taxOwed) AS debt
FROM TaxReturns
GROUP BY taxpayerID
HAVING COUNT(taxpayerID) >= 4;

--SELECT *
--FROM Payments;

CREATE VIEW PaymentCredits AS
SELECT taxpayerID, MAX(datePaid) AS biggestDatePaid, SUM(amountPaid) AS credit
FROM Payments
GROUP BY taxpayerID
HAVING COUNT(DISTINCT amountPaid) >= 2;

--SELECT *
--FROM TaxDebts;

--SELECT *
--FROM PaymentCredits;
