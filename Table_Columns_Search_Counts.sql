-- This query creates output which is a query and on running that it gives count from those tables.

SELECT 'SELECT ''' + o.name +''',''' + c.name + ''', COUNT(*) FROM ' + o.name 
+ ' HAVING COUNT(*) > 0 UNION ALL'
FROM	sysobjects o,
	syscolumns c 
WHERE	o.xtype = 'u' 
AND	o.id = c.id 
AND	c.name LIKE '%Column Name%' 
--AND c.xtype NOT IN ( 167,175,231,239)



