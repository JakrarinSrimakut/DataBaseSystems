ALTER TABLE Payments
    ADD CONSTRAINT positive_payments
      CHECK (amountPaid >= 0);

ALTER TABLE Businesses
    ADD CHECK (lastDateFiled >= lastDatePaid);

ALTER TABLE IRSagents
    ADD CHECK (jobLevel IS NOT NULL OR active IS NULL);

ALTER TABLE Individuals
    ADD CHECK (taxpayerID <> spouseID);
