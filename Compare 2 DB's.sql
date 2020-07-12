USE <DB1>
GO
--This Query compares table and corresponding columns
SELECT 	o.name as table_name,c.name as column_name --,o.*
FROM	sysobjects o,
	syscolumns c 
WHERE	o.xtype = 'u' 
AND	o.id = c.id 
AND	not exists 
	(SELECT 1 
	FROM 	<DB2>..sysobjects o1,
		<DB2>..syscolumns c1
	WHERE 	o1.xtype = 'u' 
	AND	o1.id = c1.id 
	AND 	o1.name = o.name
	AND 	c1.name = c.name
	)



--This Query compares tables only
SELECT 	o.name 
FROM	sysobjects o
WHERE	o.xtype = 'u' 
AND	not exists 
	(SELECT 1 
	FROM 	<DB2>..sysobjects o1
	WHERE 	o1.xtype = 'u' 
	AND 	o1.name = o.name
	)




