CREATE TABLE [dbo].[dim_marcas]
(
	[marca_id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [desc_marca] NVARCHAR(200) NULL, 
    [categoria_id] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_dim_marcas_dim_categorias] FOREIGN KEY ([categoria_id]) REFERENCES [dim_categorias]([categoria_id])
)
