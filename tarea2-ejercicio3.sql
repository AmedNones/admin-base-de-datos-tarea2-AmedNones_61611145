CREATE TABLE [vehiculos] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nombre_vehiculo] varchar(30)
)
GO

CREATE TABLE [his_tarifas] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_vehiculo] int,
  [precio_tarifa] numeric,
  [fecha_inicio] date,
  [fecha_final] date
)
GO

CREATE TABLE [recibos] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [fecha] datetime,
  [id_tarifa] int
)
GO

ALTER TABLE [his_tarifas] ADD FOREIGN KEY ([id_vehiculo]) REFERENCES [vehiculos] ([id])
GO

ALTER TABLE [recibos] ADD FOREIGN KEY ([id_tarifa]) REFERENCES [his_tarifas] ([id])
GO
