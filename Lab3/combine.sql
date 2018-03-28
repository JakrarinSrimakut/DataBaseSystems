--SELECT *
--FROM Payments;

--SELECT *
--FROM NewPayments;

UPDATE Payments p
        SET amountPaid = p.amountPaid + n.amountPaid
        FROM NewPayments n
        WHERE (p.taxpayerID,p.datePaid) IN
                (SELECT n.taxpayerID,n.datePaid
                );

INSERT INTO Payments(taxpayerID,datePaid,amountPaid)
        SELECT n.taxpayerID,n.datePaid,n.amountPaid
        FROM NewPayments n
        WHERE (n.taxpayerID,n.datePaid) NOT IN
                (SELECT p.taxpayerID,p.datePaid
                 FROM Payments p
                );

--SELECT *
--FROM Payments;

--SELECT *
--FROM NewPayments;


