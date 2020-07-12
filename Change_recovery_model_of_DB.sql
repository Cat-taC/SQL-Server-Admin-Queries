--This query creates ALTER statements to change all databases from recovery mode from FULL to SIMPLE

SELECT 	'ALTER DATABASE ' + name + ' SET RECOVERY SIMPLE ;' -- , recovery_model_desc  
FROM 	sys.databases  
WHERE 	recovery_model_desc = 'FULL' 