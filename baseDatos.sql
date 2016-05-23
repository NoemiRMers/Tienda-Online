Alter authorization on database::Tienda to sa;
create database Tienda;
 use Tienda;
	create table registroCliente(
		idRegistro int primary key,
		username varchar(50),
		nombre varchar(50),
		contraseña varchar(50),
		fechaRegistro varchar(50)
		);
	create table Cliente(
		idCliente varchar(15) primary key,
		idRegistro int,
		username varchar(50),
		nombre varchar(50),
		apellido varchar(50),
		fechaNacimiento varchar(50),
		constraint Cliente_fk_Registro foreign key (idRegistro) references registroCliente
		);
	create table ClienteFrecuente(
		idClienteFrecuente varchar(15) primary key,
		idCliente varchar(15)
		constraint ClienteFrecuente_fk_Cliente foreign key (idCliente) references Cliente
		);
	create table Visitante(
		numVisitante int primary key
		);
	create table Ofertas(
		idOferta varchar(50) primary key,
		nombre varchar(50),
		descripcion varchar(500),
		totalPagar varchar(500),
		);
	create table Descuentos(
		idDescuento int primary key,
		cantidad int,
		totalPagar float,
		totalDescuento float
		);
	create table Productos(
		idProducto varchar(50) primary key,
		nombre varchar(500),
		precio float
		);
	create table VideoJuegos(
		idVideojuego varchar(500) primary key,
		idProducto varchar(50)
		constraint VideoJuegos_fk_Producto foreign key (idProducto) references Productos
		);
	create table ArchivoMultimedia(
		idMultimedia varchar(50) primary key,
		idProducto varchar(50),
		constraint ArchivoMultimedia_fk_Producto foreign key (idProducto) references Productos
		);
	create table Musica(
		idMusica int primary key,
		nombre varchar(50),
		artista varchar(50),
		album varchar(50),
		genero varchar(50),
		idProducto varchar(50),
		tamaño float
		constraint Musica_fk_Producto foreign key (idProducto) references Productos
		);
	create table Video(
		idVideo int primary key,
		nombre varchar(50),
		artista varchar(50),
		album varchar(50),
		genero varchar(50),
		idProducto varchar(50),
		tamaño float
		constraint Video_fk_Producto foreign key (idProducto) references Productos
		);
	create table Foto(
		idFoto int primary key,
		nombre varchar(50),
		artista varchar(50),
		album varchar(50),
		genero varchar(50),
		idProducto varchar(50),
		tamaño float
		constraint Foto_fk_Producto foreign key (idProducto) references Productos
		);
	create table Proveedor(
		idProveedor varchar(50) primary key,
		nombre varchar(50),
		direccion varchar(100)
		);
	create table Pedido(
		idPedido int,

		descripcionPedido varchar(500),
		idProducto varchar(50),
		idProveedor varchar(50),
		constraint Pedido_fk_Producto foreign key (idProducto) references Productos,
		constraint Pedido_fk_Proveedor foreign key (idProveedor) references Proveedor
		);
	create table Administrador(
		idAdministrador int primary key,
		nombre varchar(50),
		contraseña varchar(50)
		);
	create table Reporte(
		idReporte int primary key,
		nombre varchar(50),
		descripcion varchar(50),
		idAdministrador int
		constraint Reporte_fk_Producto foreign key (idAdministrador) references Administrador
		);
	create table ReporteCompra(
		idReporteCompra int primary key,
		idReporte int
		constraint ReporteCompra_fk_Reporte foreign key (idReporte) references Reporte
		);
	create table ReportePromocion(
		idReportePromocion int primary key,
		idReporte int
		constraint ReportePromcion_fk_Reporte foreign key (idReporte) references Reporte
		);
	create table ReporteCliente(
		idReporteCliente int primary key,
		idReporte int,
		constraint ReporteCliente_fk_Reporte foreign key (idReporte) references Reporte
		);
	create table Venta(
		idVenta varchar(50) primary key,
		idAdministrador int,
		cantidadProductos varchar(50),
		idProducto varchar(50),
		totalPagar varchar(50),
		constraint Venta_fk_Administrador foreign key (idAdministrador) references Administrador,
		constraint Venta_fk_Producto foreign key (idProducto) references Productos
		);
	create table Supervisor(
		idSupervisor int primary key,
		idEmpleado int,
		nombre varchar(50),
		username varchar(30),
		contraseña varchar(50)
		);
