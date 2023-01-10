CREATE TABLE [dbo].[fato_005]
(
    [produto_id] NVARCHAR(50) NOT NULL, 
    [dia_id] NVARCHAR(50) NOT NULL,
    [fabrica_id] NVARCHAR(50) NOT NULL, 
    [meta_custo] FLOAT NULL, 
    PRIMARY KEY ([produto_id], [fabrica_id], [dia_id]), 
    CONSTRAINT [FK_fato_005_dim_produtos] FOREIGN KEY ([produto_id]) REFERENCES [dim_produtos]([produto_id]), 
    CONSTRAINT [FK_fato_005_dim_tempo] FOREIGN KEY ([dia_id]) REFERENCES [dim_tempo]([dia_id]), 
    CONSTRAINT [FK_fato_005_dim_fabricas] FOREIGN KEY ([fabrica_id]) REFERENCES [Table1]([fabrica_id])
)
