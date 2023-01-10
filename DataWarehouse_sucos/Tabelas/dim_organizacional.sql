CREATE TABLE [dbo].[dim_organizacional]
(
	[filho_id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [desc_filho] NVARCHAR(200) NULL, 
    [pai_id] NVARCHAR(50) NULL, 
    [esquerda] INT NULL, 
    [direita] INT NULL, 
    [nivel] INT NULL, 
    CONSTRAINT [FK_dim_organizacional_dim_organizacional] FOREIGN KEY ([pai_id]) REFERENCES [dim_organizacional]([filho_id])
)
