ALTER TABLE IRSagents
    ADD FOREIGN KEY (taxpayerID)
    REFERENCES Individuals(taxpayerID);

ALTER TABLE Delinquents
    ADD FOREIGN KEY (IRSagentID)
    REFERENCES IRSagents(IRSagentID);

ALTER TABLE Delinquents
    ADD FOREIGN KEY (collectionAgencyID)
    REFERENCES Businesses(taxpayerID);
