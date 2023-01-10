CREATE TABLE [dbo].[dim_tempo]
(
	[dia_id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [data] DATE NULL, 
    [semana_id] INT NULL, 
    [nome_dia_semana] NVARCHAR(50) NULL, 
    [mes_id] INT NULL, 
    [nome_mes] NVARCHAR(50) NULL, 
    [mes_ano_id] NVARCHAR(50) NULL, 
    [nome_mes_ano] NVARCHAR(50) NULL, 
    [trimestre_id] INT NULL, 
    [nome_trimestre] NVARCHAR(50) NULL, 
    [trimestre_ano_id] NVARCHAR(50) NULL, 
    [nome_trimestre_ano] NVARCHAR(50) NULL, 
    [semestre_id] INT NULL, 
    [nome_semetre] NVARCHAR(50) NULL, 
    [semestre_ano_id] INT NULL, 
    [nome_semestre_ano] NVARCHAR(50) NULL, 
    [ano] NVARCHAR(50) NULL, 
    [tipo_dia] NVARCHAR(50) NULL
)
