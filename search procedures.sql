--Any of the 3 queries can be used to search for keyword in Procedures

SELECT 	Routine_Name, Routine_Definition 
FROM 	Information_Schema.Routines 
WHERE 	Routine_Definition Like '%Keyword%' 
AND 	Routine_Type='Procedure'


SELECT 	Name 
FROM 	sys.procedures 
WHERE 	OBJECT_DEFINITION(object_id) LIKE '%Keyword%' 
 
SELECT 	OBJECT_NAME(object_id) 
FROM 	sys.sql_modules 
WHERE 	Definition LIKE '%Keyword%' 
AND 	OBJECTPROPERTY(object_id, 'IsProcedure') = 1 


