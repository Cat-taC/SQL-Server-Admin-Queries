--This query can be used to search for certain column name and Table name

SELECT 	o.name as table_name,c.name as column_name 
FROM	sysobjects o,
	syscolumns c 
WHERE	o.xtype = 'u' 
AND	o.id = c.id 
AND	(c.name like '%Column Name Search%' 
	)
AND	o.name Like '%Table Name Search%'
ORDER BY 2,1





