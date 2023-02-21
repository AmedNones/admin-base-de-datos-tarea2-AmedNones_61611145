CREATE TABLE [paises] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nombre_pais] varchar(30)
)
GO

CREATE TABLE [tipos_combustible] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nombre_combustible] varchar(30)
)
GO

CREATE TABLE [his_combustible] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_tipo_combustible] int,
  [id_pais] int,
  [fecha_inicio] date,
  [fecha_final] date,
  [precio_combustible] numeric
)
GO

ALTER TABLE [his_combustible] ADD FOREIGN KEY ([id_tipo_combustible]) REFERENCES [tipos_combustible] ([id])
GO

ALTER TABLE [his_combustible] ADD FOREIGN KEY ([id_pais]) REFERENCES [paises] ([id])
GO
