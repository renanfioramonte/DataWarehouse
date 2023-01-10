CREATE TABLE [dbo].[dim_clientes]
(
	[cliente_id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [desc_cliente] NVARCHAR(200) NULL, 
    [cidade_id] NVARCHAR(50) NULL, 
    [desc_cidade] NVARCHAR(200) NULL,
    [estado_id] NVARCHAR(50) NULL, 
    [desc_estado] NVARCHAR(200) NULL,
    [regiao_id] NVARCHAR(50) NULL, 
    [desc_regiao] NVARCHAR(200) NULL,
    [segmento_id] NVARCHAR(50) NULL, 
    [desc_segmento] NVARCHAR(200) NULL
)
