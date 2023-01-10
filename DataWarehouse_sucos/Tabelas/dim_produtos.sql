CREATE TABLE [dbo].[dim_produtos]
(
	[produto_id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [desc_produto] NVARCHAR(200) NULL, 
    [atr_tamanho] NVARCHAR(200) NULL, 
    [atr_sabor] NVARCHAR(200) NULL, 
    [marca_id] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_dim_produtos_dim_marcas] FOREIGN KEY ([marca_id]) REFERENCES [dim_marcas]([marca_id])
)
