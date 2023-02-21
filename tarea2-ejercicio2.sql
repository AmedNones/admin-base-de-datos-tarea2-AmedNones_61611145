CREATE TABLE [restaurantes] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nombre_restaurante] varchar(30)
)
GO

CREATE TABLE [platillos] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_restaurante] int,
  [nombre_platillo] varchar(30)
)
GO

CREATE TABLE [his_platillos] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_restaurante] int,
  [id_platillo] int,
  [precio_platillo] numeric,
  [fecha_inicio] date,
  [fecha_final] date
)
GO

CREATE TABLE [pedidos] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_cliente] int
)
GO

CREATE TABLE [pedidos_detalle] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_pedido] int,
  [id_platitllo] int,
  [cantidad] int
)
GO

ALTER TABLE [platillos] ADD FOREIGN KEY ([id_restaurante]) REFERENCES [restaurantes] ([id])
GO

ALTER TABLE [his_platillos] ADD FOREIGN KEY ([id_restaurante]) REFERENCES [restaurantes] ([id])
GO

ALTER TABLE [his_platillos] ADD FOREIGN KEY ([id_platillo]) REFERENCES [platillos] ([id])
GO

ALTER TABLE [pedidos_detalle] ADD FOREIGN KEY ([id_pedido]) REFERENCES [pedidos] ([id])
GO

ALTER TABLE [pedidos_detalle] ADD FOREIGN KEY ([id_platitllo]) REFERENCES [his_platillos] ([id])
GO
