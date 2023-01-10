CREATE TABLE [dbo].[fato_003]
(
    [fabrica_id] NVARCHAR(50) NOT NULL,
    [dia_id] NVARCHAR(50) NOT NULL, 
    [custo_fixo] FLOAT NULL, 
    PRIMARY KEY ([fabrica_id], [dia_id]), 
    CONSTRAINT [FK_fato_003_dim_tempo] FOREIGN KEY ([dia_id]) REFERENCES [dim_tempo]([dia_id]), 
    CONSTRAINT [FK_fato_003_dim_fabricas] FOREIGN KEY ([fabrica_id]) REFERENCES [Table1]([fabrica_id])
)