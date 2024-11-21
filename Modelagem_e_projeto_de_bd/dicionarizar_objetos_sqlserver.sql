USE cafe

-- Consulta objetos
SELECT 
    t.TABLE_NAME AS 'Tabela',
    ISNULL(ep.value, '') AS 'Comentário da Tabela',
    c.COLUMN_NAME AS 'Coluna',
    c.DATA_TYPE AS 'Tipo de Dado',
    ISNULL(ep_col.value, '') AS 'Comentário da Coluna'
FROM 
    INFORMATION_SCHEMA.TABLES t
JOIN 
    INFORMATION_SCHEMA.COLUMNS c
    ON t.TABLE_NAME = c.TABLE_NAME
    AND t.TABLE_SCHEMA = c.TABLE_SCHEMA
LEFT JOIN 
    sys.extended_properties ep 
    ON OBJECT_ID(t.TABLE_SCHEMA + '.' + t.TABLE_NAME) = ep.major_id
    AND ep.minor_id = 0
    AND ep.name = 'MS_Description'
LEFT JOIN 
    sys.extended_properties ep_col 
    ON OBJECT_ID(t.TABLE_SCHEMA + '.' + t.TABLE_NAME) = ep_col.major_id
    AND ep_col.minor_id = COLUMNPROPERTY(OBJECT_ID(t.TABLE_SCHEMA + '.' + t.TABLE_NAME), c.COLUMN_NAME, 'ColumnID')
    AND ep_col.name = 'MS_Description'
WHERE 
    t.TABLE_TYPE = 'BASE TABLE' 
ORDER BY 
    t.TABLE_NAME, 
    c.ORDINAL_POSITION;
