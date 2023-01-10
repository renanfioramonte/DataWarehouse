CREATE TABLE [dbo].[fato_004]
(
	[cliente_id] NVARCHAR(50) NOT NULL , 
    [produto_id] NVARCHAR(50) NOT NULL, 
    [organizacional_id] NVARCHAR(50) NOT NULL, 
    [dia_id] NVARCHAR(50) NOT NULL, 
    [meta_faturamento] FLOAT NULL, 
    PRIMARY KEY ([cliente_id], [produto_id], [organizacional_id], [dia_id]), 
    CONSTRAINT [FK_fato_004_dim_clientes] FOREIGN KEY ([cliente_id]) REFERENCES [dim_clientes]([cliente_id]), 
    CONSTRAINT [FK_fato_004_dim_produtos] FOREIGN KEY ([produto_id]) REFERENCES [dim_produtos]([produto_id]), 
    CONSTRAINT [FK_fato_004_dim_organizacional] FOREIGN KEY ([organizacional_id]) REFERENCES [dim_organizacional]([filho_id]), 
    CONSTRAINT [FK_fato_004_dim_tempo] FOREIGN KEY ([dia_id]) REFERENCES [dim_tempo]([dia_id]) 
)
