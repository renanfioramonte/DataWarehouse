CREATE TABLE [dbo].[fato_002]
(
	[cliente_id] NVARCHAR(50) NOT NULL , 
    [produto_id] NVARCHAR(50) NOT NULL, 
    [fabrica_id] NVARCHAR(50) NOT NULL,
    [dia_id] NVARCHAR(50) NOT NULL, 
    [custo_fixo] FLOAT NULL, 
    PRIMARY KEY ([cliente_id], [produto_id], [fabrica_id], [dia_id]), 
    CONSTRAINT [FK_fato_002_dim_clientes] FOREIGN KEY ([cliente_id]) REFERENCES [dim_clientes]([cliente_id]), 
    CONSTRAINT [FK_fato_002_dim_produtos] FOREIGN KEY ([produto_id]) REFERENCES [dim_produtos]([produto_id]), 
    CONSTRAINT [FK_fato_002_dim_tempo] FOREIGN KEY ([dia_id]) REFERENCES [dim_tempo]([dia_id]), 
    CONSTRAINT [FK_fato_002_dim_fabricas] FOREIGN KEY ([fabrica_id]) REFERENCES [Table1]([fabrica_id])
)
