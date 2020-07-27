--SQLTEST101 Sample Queries
--Press Execute to run all Queries
--Highlight a single Query and press Execute to run only that query

SELECT *
FROM VISITS
WHERE vsdate >= '07/01/2020' AND vsdate <= '07/26/2020'

SELECT * 
FROM VISITS
WHERE vsid = '50021'

SELECT * 
FROM Providers
WHERE pospecialty = 'CHEMO'

SELECT vsid, vsdate, vsptid, vsptname, ptphone, ptcondition1, ptcondition2, ptcondition3, ptcondition4, ptcondition5, vspoid, vsponame, pospecialty
FROM VISITS
LEFT JOIN Patients ON vsptid = ptid
LEFT JOIN Providers ON vspoid = poid
