CREATE TABLE [dbo].[fato_001]
(
	[cliente_id] NVARCHAR(50) NOT NULL , 
    [produto_id] NVARCHAR(50) NOT NULL, 
    [organizacional_id] NVARCHAR(50) NOT NULL, 
    [dia_id] NVARCHAR(50) NOT NULL, 
    [faturamento] FLOAT NULL, 
    [imposto] FLOAT NULL, 
    [custo_variavel] FLOAT NULL, 
    [qtd_vendida] FLOAT NULL, 
    [unidade_vendida] FLOAT NULL, 
    [fabrica_id] NVARCHAR(50) NOT NULL, 
    PRIMARY KEY ([cliente_id], [produto_id], [organizacional_id], [fabrica_id], [dia_id]), 
    CONSTRAINT [FK_fato_001_dim_clientes] FOREIGN KEY ([cliente_id]) REFERENCES [dim_clientes]([cliente_id]), 
    CONSTRAINT [FK_fato_001_dim_produtos] FOREIGN KEY ([produto_id]) REFERENCES [dim_produtos]([produto_id]), 
    CONSTRAINT [FK_fato_001_dim_organizacional] FOREIGN KEY ([organizacional_id]) REFERENCES [dim_organizacional]([filho_id]), 
    CONSTRAINT [FK_fato_001_dim_tempo] FOREIGN KEY ([dia_id]) REFERENCES [dim_tempo]([dia_id]), 
    CONSTRAINT [FK_fato_001_dim_fabricas] FOREIGN KEY ([fabrica_id]) REFERENCES [Table1]([fabrica_id])
)
