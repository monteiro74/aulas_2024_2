SELECT 
    t.TABLE_NAME AS 'Tabela',
    t.TABLE_COMMENT AS 'Comentário da Tabela',
    c.COLUMN_NAME AS 'Coluna',
    c.DATA_TYPE AS 'Tipo de Dado',
    c.COLUMN_COMMENT AS 'Comentário da Coluna'
FROM 
    information_schema.TABLES t
JOIN 
    information_schema.COLUMNS c
    ON t.TABLE_SCHEMA = c.TABLE_SCHEMA 
    AND t.TABLE_NAME = c.TABLE_NAME
WHERE 
    t.TABLE_SCHEMA = DATABASE()
ORDER BY 
    t.TABLE_NAME, 
    c.ORDINAL_POSITION;
