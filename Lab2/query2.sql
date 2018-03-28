--Give the taxPayerID of each business whose name
--begins with ‘TI’ and that has no tax returns
--SELECT * FROM Businesses;
--SELECT * FROM TaxReturns;

SELECT b.taxpayerID 
FROM Businesses b
WHERE name LIKE 'TI%'
AND b.taxpayerID NOT IN(SELECT taxpayerID
                        FROM TaxReturns);
                          

