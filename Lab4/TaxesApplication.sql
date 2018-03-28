--test script
--4 represent numberOf Deleinquents
SELECT *
FROM IRSagents;

SELECT *
FROM Delinquents;

SELECT i.taxpayerID
FROM IRSagents i,(SELECT d.IRSagentID, COUNT(d.IRSagentID)
		FROM Delinquents d
		GROUP BY (d.IRSagentID))d1
WHERE i.IRSagentID = d1.IRSagentID
AND d1.count >=1;

