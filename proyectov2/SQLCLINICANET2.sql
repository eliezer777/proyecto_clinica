USE [master]
GO

/****** Object:  Database [ClinicaNet2]    Script Date: 28/10/2020 15:09:50 ******/
DROP DATABASE [ClinicaNet2]
GO

/****** Object:  Database [ClinicaNet2]    Script Date: 28/10/2020 15:09:50 ******/
CREATE DATABASE [ClinicaNet2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClinicaNet2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ClinicaNet2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClinicaNet2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ClinicaNet2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClinicaNet2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ClinicaNet2] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ClinicaNet2] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ClinicaNet2] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ClinicaNet2] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ClinicaNet2] SET ARITHABORT OFF 
GO

ALTER DATABASE [ClinicaNet2] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ClinicaNet2] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ClinicaNet2] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ClinicaNet2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ClinicaNet2] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ClinicaNet2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ClinicaNet2] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ClinicaNet2] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ClinicaNet2] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ClinicaNet2] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ClinicaNet2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ClinicaNet2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ClinicaNet2] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ClinicaNet2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ClinicaNet2] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ClinicaNet2] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ClinicaNet2] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ClinicaNet2] SET RECOVERY FULL 
GO

ALTER DATABASE [ClinicaNet2] SET  MULTI_USER 
GO

ALTER DATABASE [ClinicaNet2] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ClinicaNet2] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ClinicaNet2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ClinicaNet2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ClinicaNet2] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ClinicaNet2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [ClinicaNet2] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ClinicaNet2] SET  READ_WRITE 
GO






USE [ClinicaNET2]
GO


iF EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = 'info_usuario')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go


iF not EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = 'info_usuario')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go


IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='info_usuario')
CREATE TABLE [info_usuario]
(
 [cod_usuario]      int NOT NULL ,
 [primer_nombre]    varchar(50) NOT NULL ,
 [segundo_nombre]   varchar(50) NOT NULL ,
 [primer_apellido]  varchar(50) NOT NULL ,
 [segundo_apellido] varchar(50) NOT NULL ,
 [edad]             int NOT NULL ,
 [fecha_nacimiento] date NOT NULL ,


 CONSTRAINT [PK_info_usuario] PRIMARY KEY CLUSTERED ([cod_usuario] ASC)
);
GO



iF EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = 'info_usuario_add')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go



IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='info_usuario_add')
CREATE TABLE [info_usuario_add]
(
 [cod_usuario]        int NOT NULL ,
 [telefono]           int NULL ,
 [extencion]          int NULL ,
 [correo_electronico] varchar(200) NULL ,
 [direccion]          varchar(200) NULL ,


 CONSTRAINT [PK_info_usuario_add] PRIMARY KEY CLUSTERED ([cod_usuario] ASC)
);
GO





iF EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = '´seg_paginas')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go



iF not EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = '´seg_paginas')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go



IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='seg_paginas')
CREATE TABLE [seg_paginas]
(
 [id_pagina]          int NOT NULL ,
 [nombre_pagina]      varchar(50) NOT NULL ,
 [descripcion]        varchar(150) NOT NULL ,
 [ubicacion]          varchar(max) NOT NULL ,
 [fecha_creacion]     date NOT NULL ,
 [fecha_modificacion] date NOT NULL ,
 [usuario_creacion]   varchar(50) NOT NULL ,


 CONSTRAINT [PK_seg_paginas] PRIMARY KEY CLUSTERED ([id_pagina] ASC)
);
GO

iF EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = '´seg_permisos')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go




iF not EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = 'seg_permisos')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go


IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='seg_permisos')
CREATE TABLE [seg_permisos]
(
 [cod_usuario]        int NOT NULL ,
 [habilitado]         int NOT NULL ,
 [fecha_modificacion] date NOT NULL ,
 [id_pagina]          int NOT NULL ,


 CONSTRAINT [PK_seg_permisos] PRIMARY KEY CLUSTERED ([cod_usuario] ASC),
 CONSTRAINT [FK_75] FOREIGN KEY ([id_pagina])  REFERENCES [seg_paginas]([id_pagina])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_75] ON [seg_permisos] 
 (
  [id_pagina] ASC
 )

GO

iF EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = '´tipo_usuario')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go

iF EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = '´tipo_usuario')
DROP TABLE IF EXISTS [tipo_usuario];
GO



IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='tipo_usuario')
CREATE TABLE [tipo_usuario]
(
 [cod_tipo]    int NOT NULL ,
 [tipo]        int NOT NULL ,
 [descripcion] varchar(200) NOT NULL ,


 CONSTRAINT [PK_tipo_usuario] PRIMARY KEY CLUSTERED ([cod_tipo] ASC)
);
GO




iF NOT EXISTS (SELECT * FROM SYS.all_objects WHERE NAME = 'usuarios')
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
go



IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='usuarios')
CREATE TABLE [usuarios]
(
 [cod_usuario]        int NOT NULL identity (1,1) ,
 [usuario]            varchar(50) NOT NULL ,
 [pass]               varchar(50) NOT NULL ,
 [habilitado]         bit NOT NULL ,
 [tipo_usuario]       int NOT NULL ,
 [fecha_creacion]     date NOT NULL ,
 [fecha_modificacion] date NOT NULL ,
 [cod_usuario_1]      int NOT NULL ,
 [cod_tipo]           int NOT NULL ,


 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED ([cod_usuario] ASC),
 CONSTRAINT [FK_18] FOREIGN KEY ([cod_usuario_1])  REFERENCES [info_usuario]([cod_usuario]),
 CONSTRAINT [FK_32] FOREIGN KEY ([cod_tipo])  REFERENCES [tipo_usuario]([cod_tipo])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_18] ON [usuarios] 
 (
  [cod_usuario_1] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_32] ON [usuarios] 
 (
  [cod_tipo] ASC
 )

GO

insert into tipo_usuario (cod_tipo,tipo,Descripcion) values (1,1,'usuario ADMINISTRATIVO')
go
insert into info_usuario (cod_usuario,primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,edad,fecha_nacimiento) 
values ((select isnull ((max(cod_usuario)+1),1) from info_usuario),'Admin', 'Master','Admin','Master','0',getdate())  
go
insert into info_usuario_add (cod_usuario,telefono,correo_electronico,direccion) 
values ((select isnull ((max(cod_usuario)),1) from info_usuario),78784585,'asdas@gmail.com','Ciudad de guatemala')
go
insert into usuarios (usuario,pass,habilitado,tipo_usuario,fecha_creacion,fecha_modificacion,cod_tipo,cod_usuario_1) 
values ('Admin','Holamundo',1,1,getdate(),getdate(),1,(select max(cod_usuario) from info_usuario)) 
go


DROP TABLE IF EXISTS [datos_paciente];
GO


-- ************************************** [datos_paciente]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='datos_paciente')
CREATE TABLE [datos_paciente]
(
 [id_paciente]      int IDENTITY (1, 1) NOT NULL ,
 [Primer_nombre]    varchar(50) NOT NULL ,
 [Segundo_Nombre]   varchar(50) NOT NULL ,
 [Primer_apellido]  varchar(50) NOT NULL ,
 [Segundo_apellido] varchar(50) NOT NULL ,
 [Fecha_nacimiento] date NOT NULL ,
 [dpi]              int NOT NULL ,
 [Nit]              varchar(50) NULL ,
 [Pasaporte]        varchar(100) NULL ,
 [tipo_de_sangre]   varchar(50) NULL ,
 [licencia]         int NULL ,


 CONSTRAINT [PK_datos_paciente] PRIMARY KEY CLUSTERED ([id_paciente] ASC)
);
GO


DROP TABLE IF EXISTS [datos_paciente_add];
GO



-- ************************************** [datos_paciente_add]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='datos_paciente_add')
CREATE TABLE [datos_paciente_add]
(
 [id_paciente_1]      int NOT NULL ,
 [id]                 int IDENTITY (1, 1) NOT NULL ,
 [telefono]           int NULL ,
 [direccion]          varchar(250) NULL ,
 [correo_electronico] varchar(250) NULL ,


 CONSTRAINT [PK_datos_paciente_add] PRIMARY KEY CLUSTERED ([id_paciente_1] ASC),
 CONSTRAINT [FK_102] FOREIGN KEY ([id_paciente_1])  REFERENCES [datos_paciente]([id_paciente])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_102] ON [datos_paciente_add] 
 (
  [id_paciente_1] ASC
 )

GO

DROP TABLE IF EXISTS [datos_paciente_historial];
GO




-- ************************************** [datos_paciente_historial]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='datos_paciente_historial')
CREATE TABLE [datos_paciente_historial]
(
 [id_paciente]            int NOT NULL ,
 [id]                     int IDENTITY (1, 1) NOT NULL ,
 [cod_usuario]            int NOT NULL ,
 [fecha_registro]         date NOT NULL ,
 [fecha_ingreso_paciente] date NULL ,
 [fecha_salida_paciente]  date NULL ,
 [Descripcion]            varchar(max) NOT NULL ,
 [cod_medico_atiende]     int NOT NULL ,


 CONSTRAINT [PK_datos_paciente_historial] PRIMARY KEY CLUSTERED ([id_paciente] ASC),
 CONSTRAINT [FK_115] FOREIGN KEY ([id_paciente])  REFERENCES [datos_paciente]([id_paciente]),
 CONSTRAINT [FK_118] FOREIGN KEY ([cod_usuario])  REFERENCES [info_usuario]([cod_usuario])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_115] ON [datos_paciente_historial] 
 (
  [id_paciente] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_118] ON [datos_paciente_historial] 
 (
  [cod_usuario] ASC
 )

GO
DROP TABLE IF EXISTS [empleados];
GO




-- ************************************** [empleados]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='empleados')
CREATE TABLE [empleados]
(
 [cod_empleado]  int NOT NULL ,
 [DPI]           int NOT NULL ,
 [Nit]           int NOT NULL ,
 [Dir_principal] varchar(250) NOT NULL ,
 [puesto]        varchar(150) NOT NULL ,
 [cod_usuario]   int NOT NULL ,


 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED ([cod_empleado] ASC),
 CONSTRAINT [FK_180] FOREIGN KEY ([cod_usuario])  REFERENCES [info_usuario]([cod_usuario])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_180] ON [empleados] 
 (
  [cod_usuario] ASC
 )

GO

DROP TABLE IF EXISTS [datos_personal_medicos];
GO



-- ************************************** [datos_personal_medicos]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='datos_personal_medicos')
CREATE TABLE [datos_personal_medicos]
(
 [cod_medico]         int IDENTITY (1, 1) NOT NULL ,
 [num_colegiado]      int NOT NULL ,
 [cod_empleado]       int NOT NULL ,
 [Primer_nombre]      varchar(50) NOT NULL ,
 [Segundo_nombre]     varchar(50) NOT NULL ,
 [Primer_apellido]    varchar(50) NOT NULL ,
 [Segundo_apellido]   varchar(50) NOT NULL ,
 [dpi]                int NOT NULL ,
 [nit]                int NOT NULL ,
 [fecha_de_ingreso]   date NOT NULL ,
 [fecha_de_baja]      date NULL ,
 [Telefono_principal] int NOT NULL ,
 [Correo_principal]   varchar(250) NOT NULL ,


 CONSTRAINT [PK_datos_personal_medicos] PRIMARY KEY CLUSTERED ([cod_medico] ASC, [num_colegiado] ASC, [cod_empleado] ASC),
 CONSTRAINT [FK_183] FOREIGN KEY ([cod_empleado])  REFERENCES [empleados]([cod_empleado])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_183] ON [datos_personal_medicos] 
 (
  [cod_empleado] ASC
 )

GO

DROP TABLE IF EXISTS [habitaciones];
GO


-- ************************************** [habitaciones]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='habitaciones')
CREATE TABLE [habitaciones]
(
 [id_cama]            int NOT NULL ,
 [tv]                 int NOT NULL ,
 [equipo_emergencia]  int NOT NULL ,
 [personal_encargado] int NOT NULL ,
 [disponible]         int NOT NULL ,


 CONSTRAINT [PK_habitaciones] PRIMARY KEY CLUSTERED ([id_cama] ASC)
);
GO

DROP TABLE IF EXISTS [habitacion_disponibilidad];
GO




-- ************************************** [habitacion_disponibilidad]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='habitacion_disponibilidad')
CREATE TABLE [habitacion_disponibilidad]
(
 [id_cama]          int NOT NULL ,
 [id_paciente]      int NOT NULL ,
 [fecha_inicio]     date NOT NULL ,
 [fecha_salida]     date NOT NULL ,
 [fecha_asignacion] date NOT NULL ,
 [Exp_anotacion]    varchar(max) NOT NULL ,
 [ocupada]          int NOT NULL ,
 [cod_medico]       int NOT NULL ,
 [num_colegiado]    int NOT NULL ,
 [cod_empleado]     int NOT NULL ,


 CONSTRAINT [PK_habitacion_disponibilidad] PRIMARY KEY CLUSTERED ([id_cama] ASC),
 CONSTRAINT [FK_188] FOREIGN KEY ([id_cama])  REFERENCES [habitaciones]([id_cama]),
 CONSTRAINT [FK_192] FOREIGN KEY ([id_paciente])  REFERENCES [datos_paciente]([id_paciente]),
 CONSTRAINT [FK_201] FOREIGN KEY ([cod_medico], [num_colegiado], [cod_empleado])  REFERENCES [datos_personal_medicos]([cod_medico], [num_colegiado], [cod_empleado])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_188] ON [habitacion_disponibilidad] 
 (
  [id_cama] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_192] ON [habitacion_disponibilidad] 
 (
  [id_paciente] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_201] ON [habitacion_disponibilidad] 
 (
  [cod_medico] ASC, 
  [num_colegiado] ASC, 
  [cod_empleado] ASC
 )

GO


DROP TABLE IF EXISTS [Recetas_por_paciente];
GO




-- ************************************** [Recetas_por_paciente]

IF NOT EXISTS (SELECT * FROM sys.tables t WHERE t.name='Recetas_por_paciente')
CREATE TABLE [Recetas_por_paciente]
(
 [id_paciente]       int NOT NULL ,
 [id]                int IDENTITY (1, 1) NOT NULL ,
 [cod_medico]        int NOT NULL ,
 [num_colegiado]     int NOT NULL ,
 [fecha_de_registro] date NULL ,
 [Receta]            varchar(max) NOT NULL ,
 [cod_empleado]      int NOT NULL ,


 CONSTRAINT [PK_recetas_por_paciente] PRIMARY KEY CLUSTERED ([id_paciente] ASC),
 CONSTRAINT [FK_140] FOREIGN KEY ([id_paciente])  REFERENCES [datos_paciente]([id_paciente]),
 CONSTRAINT [FK_145] FOREIGN KEY ([cod_medico], [num_colegiado], [cod_empleado])  REFERENCES [datos_personal_medicos]([cod_medico], [num_colegiado], [cod_empleado])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_140] ON [Recetas_por_paciente] 
 (
  [id_paciente] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_145] ON [Recetas_por_paciente] 
 (
  [cod_medico] ASC, 
  [num_colegiado] ASC, 
  [cod_empleado] ASC
 )

GO

