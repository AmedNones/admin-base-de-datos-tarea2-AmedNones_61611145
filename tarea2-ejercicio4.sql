CREATE TABLE [lugares] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nombre_ruta] varchar(30)
)
GO

CREATE TABLE [his_rutas] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [origen_ruta] int,
  [destino_ruta] int,
  [precio] numeric,
  [fecha_inicio] date,
  [fecha_final] date
)
GO

CREATE TABLE [recibos] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_ruta] int
)
GO

ALTER TABLE [his_rutas] ADD FOREIGN KEY ([origen_ruta]) REFERENCES [lugares] ([id])
GO

ALTER TABLE [his_rutas] ADD FOREIGN KEY ([destino_ruta]) REFERENCES [lugares] ([id])
GO

ALTER TABLE [recibos] ADD FOREIGN KEY ([id_ruta]) REFERENCES [his_rutas] ([id])
GO
