--For each individual, the spouseID attrbute gives the taxpayerID of 
--that individuals spouse; it is NULL if the person doesn't have a
--spouse. For each individual taxpayer whose spouse is also an 
--individual taxpayer, give the name of both the taxpayer and that 
--taxpayer's spouse. In your result, the attribute should be called
--taxpayerName and the second attriubte should be called spouseName
--SELECT * FROM individuals;

SELECT i.name AS taxpayerName, i2.name AS spouseName
FROM individuals i, individuals i2
WHERE i.taxpayerID IN(SELECT i2.spouseID);
