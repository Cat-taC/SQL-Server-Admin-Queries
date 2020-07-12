--This query compares procedure names between 2 databases

SELECT  o.name as stored_procedures
FROM	<DB1>..sysobjects o 
WHERE	o.xtype = 'p' 
AND NOT EXISTS
(SELECT 1
FROM	<DB2>..sysobjects o1
WHERE	o1.xtype = 'p' 
AND		o1.name = o.name
)
ORDER BY 1