--For each payment that	was made on or after March 1, 2017, give the
--name and address of the taxpayer who made the payment, the date that
--the payment was made, and the amount paid. Your result should include
--both businesses and individuals.
--SELECT * FROM businesses;
--SELECT * FROM individuals;

SELECT name,address,lastdatepaid,totaltaxowed
FROM businesses 
WHERE lastdatepaid >= DATE '2017-03-01'
UNION
SELECT name,address,lastdatepaid,totaltaxowed
FROM individuals
WHERE lastdatepaid >= DATE '2017-03-01'

