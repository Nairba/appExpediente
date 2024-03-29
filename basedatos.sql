USE [EMEP]
GO
/****** Object:  Table [dbo].[Alcohol]    Script Date: 22/07/2019 12:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alcohol](
	[id] [int] NOT NULL,
	[activo] [int] NOT NULL,
	[inicio] [int] NULL,
	[frecuencia] [int] NULL,
	[tipo] [nvarchar](50) NULL,
	[cant_tipo] [int] NULL,
	[observaciones] [nvarchar](50) NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
 CONSTRAINT [PK_Alcohol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categoria_Alergia]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Alergia](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria_Alergia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cirugia]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cirugia](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[donde] [nvarchar](50) NOT NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
 CONSTRAINT [PK_Cirugia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cita]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hora] [nvarchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[ID_PACIENTE] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[ID_CONSULTA] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[observaciones] [text] NULL,
	[ID_HORARIO] [int] NOT NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compartir_Expediente]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compartir_Expediente](
	[id] [int] NOT NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
	[ID_USUARIO_CORREO] [nvarchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_Compartir_Expediente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ID_MEDICO] [nvarchar](50) NOT NULL,
	[ID_CONSULTORIO] [int] NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[ID_ESPECIALIDAD] [int] NOT NULL,
 CONSTRAINT [PK_Consulta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consultorio]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultorio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Medico_Especialidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Datos_Paciente]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos_Paciente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[tipo_sangre] [nvarchar](50) NOT NULL,
	[recidencia] [nvarchar](50) NOT NULL,
	[telefono] [nvarchar](50) NOT NULL,
	[contacto_emergencia] [nvarchar](50) NOT NULL,
	[parentesco] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Datos_Paciente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enfermedad_Expediente]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermedad_Expediente](
	[id] [int] NOT NULL,
	[ID_EFERMEDAD] [int] NOT NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
 CONSTRAINT [PK_Enfermedad_Expediente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enfermedad_Familiar]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermedad_Familiar](
	[id] [int] NOT NULL,
	[parentesco] [nvarchar](50) NOT NULL,
	[observaciones] [nvarchar](50) NOT NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
	[ID_ENFERMEDAD] [int] NULL,
 CONSTRAINT [PK_Familiar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expediente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[estado] [int] NOT NULL,
	[ID_PACIENTE] [int] NOT NULL,
	[ID_MEDICO] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Expediente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expediente_Actividad]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expediente_Actividad](
	[id] [int] NOT NULL,
	[ID_EXPEDIETE] [int] NOT NULL,
	[ID_ACTIVIDAD] [int] NULL,
 CONSTRAINT [PK_Expediente_Actividad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expediente_Alergia]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expediente_Alergia](
	[id] [int] NOT NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
	[ID_ALERGIA] [int] NOT NULL,
 CONSTRAINT [PK_Expediente_Alergia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fumador]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fumador](
	[id] [int] NOT NULL,
	[activo] [int] NOT NULL,
	[cant_cigarrillos] [int] NULL,
	[tiempo] [int] NULL,
	[observaciones] [nvarchar](50) NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
 CONSTRAINT [PK_Fumador] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Horario]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hora] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lista_Actividad_Fisica]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lista_Actividad_Fisica](
	[id] [int] NOT NULL,
	[activo] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[minutos] [int] NULL,
	[cant_veces] [int] NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK_Actividad_Fisica] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lista_Alergia]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lista_Alergia](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[ID_CATEGORIA] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[reaccion] [nvarchar](50) NULL,
	[observaciones] [nvarchar](50) NULL,
	[ID_EXPEDIENTE] [int] NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK_Alergia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lista_Enfermedad]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lista_Enfermedad](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [int] NOT NULL,
	[ID_EXPEDIENTE] [int] NULL,
	[img] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Enfermedad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[ID_EXPEDIENTE] [int] NOT NULL,
 CONSTRAINT [PK_Medicamento] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Otra_Actividad]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otra_Actividad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[activo] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[minutos] [int] NULL,
	[cant_veces] [int] NULL,
	[ID_EXPEDIENTE] [int] NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK_Otra_Actividad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Otra_Alergia]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otra_Alergia](
	[id] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [int] NULL,
	[reaccion] [nvarchar](50) NULL,
	[observaciones] [text] NULL,
	[img] [nvarchar](50) NULL,
	[ID_EXPEDIENTE] [int] NULL,
	[ID_CATEGORIA] [int] NULL,
 CONSTRAINT [PK_Otra_Alergia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Otra_Enfermedad]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otra_Enfermedad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripciom] [nvarchar](50) NULL,
	[estado] [int] NULL,
	[img] [nvarchar](50) NULL,
	[ID_EXPEDIENTE] [int] NULL,
 CONSTRAINT [PK_Otra_Enfermedad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente_Paciente_Asociado]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente_Paciente_Asociado](
	[ID_PACIENTE] [nvarchar](50) NOT NULL,
	[ID_PACIENTE_ASOCIADO] [int] NOT NULL,
 CONSTRAINT [PK_Paciente_Paciente_Asociado] PRIMARY KEY CLUSTERED 
(
	[ID_PACIENTE_ASOCIADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 22/07/2019 12:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[correoID] [nvarchar](50) NOT NULL,
	[cedula] [nvarchar](50) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[p_Apellido] [nvarchar](50) NOT NULL,
	[s_Apellido] [nvarchar](50) NOT NULL,
	[contrasenna] [nvarchar](50) NULL,
	[sexo] [nvarchar](50) NOT NULL,
	[estado] [int] NOT NULL,
	[ID_TIPO_USUARIO] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[correoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Alcohol]  WITH CHECK ADD  CONSTRAINT [FK_Alcohol_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Alcohol] CHECK CONSTRAINT [FK_Alcohol_Expediente]
GO
ALTER TABLE [dbo].[Cirugia]  WITH CHECK ADD  CONSTRAINT [FK_Cirugia_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Cirugia] CHECK CONSTRAINT [FK_Cirugia_Expediente]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Consulta] FOREIGN KEY([ID_CONSULTA])
REFERENCES [dbo].[Consulta] ([id])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Consulta]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Horario] FOREIGN KEY([ID_HORARIO])
REFERENCES [dbo].[Horario] ([id])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Horario]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Paciente_Paciente_Asociado] FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[Paciente_Paciente_Asociado] ([ID_PACIENTE_ASOCIADO])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Paciente_Paciente_Asociado]
GO
ALTER TABLE [dbo].[Compartir_Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Compartir_Expediente_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Compartir_Expediente] CHECK CONSTRAINT [FK_Compartir_Expediente_Expediente]
GO
ALTER TABLE [dbo].[Compartir_Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Compartir_Expediente_Usuario] FOREIGN KEY([ID_USUARIO_CORREO])
REFERENCES [dbo].[Usuario] ([correoID])
GO
ALTER TABLE [dbo].[Compartir_Expediente] CHECK CONSTRAINT [FK_Compartir_Expediente_Usuario]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Consultorio] FOREIGN KEY([ID_CONSULTORIO])
REFERENCES [dbo].[Consultorio] ([id])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Consultorio]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Especialidad] FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[Especialidad] ([id])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Especialidad]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Usuario] FOREIGN KEY([ID_MEDICO])
REFERENCES [dbo].[Usuario] ([correoID])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Usuario]
GO
ALTER TABLE [dbo].[Enfermedad_Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Enfermedad_Expediente_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Enfermedad_Expediente] CHECK CONSTRAINT [FK_Enfermedad_Expediente_Expediente]
GO
ALTER TABLE [dbo].[Enfermedad_Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Enfermedad_Expediente_Lista_Enfermedad] FOREIGN KEY([ID_EFERMEDAD])
REFERENCES [dbo].[Lista_Enfermedad] ([id])
GO
ALTER TABLE [dbo].[Enfermedad_Expediente] CHECK CONSTRAINT [FK_Enfermedad_Expediente_Lista_Enfermedad]
GO
ALTER TABLE [dbo].[Enfermedad_Familiar]  WITH CHECK ADD  CONSTRAINT [FK_Enfermedad_Familiar_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Enfermedad_Familiar] CHECK CONSTRAINT [FK_Enfermedad_Familiar_Expediente]
GO
ALTER TABLE [dbo].[Enfermedad_Familiar]  WITH CHECK ADD  CONSTRAINT [FK_Enfermedad_Familiar_Lista_Enfermedad] FOREIGN KEY([ID_ENFERMEDAD])
REFERENCES [dbo].[Lista_Enfermedad] ([id])
GO
ALTER TABLE [dbo].[Enfermedad_Familiar] CHECK CONSTRAINT [FK_Enfermedad_Familiar_Lista_Enfermedad]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Paciente_Paciente_Asociado] FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[Paciente_Paciente_Asociado] ([ID_PACIENTE_ASOCIADO])
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Paciente_Paciente_Asociado]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Usuario1] FOREIGN KEY([ID_MEDICO])
REFERENCES [dbo].[Usuario] ([correoID])
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Usuario1]
GO
ALTER TABLE [dbo].[Expediente_Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Actividad_Expediente] FOREIGN KEY([ID_EXPEDIETE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Expediente_Actividad] CHECK CONSTRAINT [FK_Expediente_Actividad_Expediente]
GO
ALTER TABLE [dbo].[Expediente_Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Actividad_Lista_Actividad_Fisica] FOREIGN KEY([ID_ACTIVIDAD])
REFERENCES [dbo].[Lista_Actividad_Fisica] ([id])
GO
ALTER TABLE [dbo].[Expediente_Actividad] CHECK CONSTRAINT [FK_Expediente_Actividad_Lista_Actividad_Fisica]
GO
ALTER TABLE [dbo].[Expediente_Alergia]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Alergia_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Expediente_Alergia] CHECK CONSTRAINT [FK_Expediente_Alergia_Expediente]
GO
ALTER TABLE [dbo].[Expediente_Alergia]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Alergia_Lista_Alergia] FOREIGN KEY([ID_ALERGIA])
REFERENCES [dbo].[Lista_Alergia] ([id])
GO
ALTER TABLE [dbo].[Expediente_Alergia] CHECK CONSTRAINT [FK_Expediente_Alergia_Lista_Alergia]
GO
ALTER TABLE [dbo].[Fumador]  WITH CHECK ADD  CONSTRAINT [FK_Fumador_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Fumador] CHECK CONSTRAINT [FK_Fumador_Expediente]
GO
ALTER TABLE [dbo].[Lista_Alergia]  WITH CHECK ADD  CONSTRAINT [FK_Lista_Alergia_Categoria_Alergia] FOREIGN KEY([ID_CATEGORIA])
REFERENCES [dbo].[Categoria_Alergia] ([id])
GO
ALTER TABLE [dbo].[Lista_Alergia] CHECK CONSTRAINT [FK_Lista_Alergia_Categoria_Alergia]
GO
ALTER TABLE [dbo].[Medicamento]  WITH CHECK ADD  CONSTRAINT [FK_Medicamento_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Medicamento] CHECK CONSTRAINT [FK_Medicamento_Expediente]
GO
ALTER TABLE [dbo].[Otra_Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Otra_Actividad_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Otra_Actividad] CHECK CONSTRAINT [FK_Otra_Actividad_Expediente]
GO
ALTER TABLE [dbo].[Otra_Alergia]  WITH CHECK ADD  CONSTRAINT [FK_Otra_Alergia_Categoria] FOREIGN KEY([ID_CATEGORIA])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Otra_Alergia] CHECK CONSTRAINT [FK_Otra_Alergia_Categoria]
GO
ALTER TABLE [dbo].[Otra_Alergia]  WITH CHECK ADD  CONSTRAINT [FK_Otra_Alergia_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Otra_Alergia] CHECK CONSTRAINT [FK_Otra_Alergia_Expediente]
GO
ALTER TABLE [dbo].[Otra_Enfermedad]  WITH CHECK ADD  CONSTRAINT [FK_Otra_Enfermedad_Expediente] FOREIGN KEY([ID_EXPEDIENTE])
REFERENCES [dbo].[Expediente] ([id])
GO
ALTER TABLE [dbo].[Otra_Enfermedad] CHECK CONSTRAINT [FK_Otra_Enfermedad_Expediente]
GO
ALTER TABLE [dbo].[Paciente_Paciente_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Paciente_Asociado_Datos_Paciente] FOREIGN KEY([ID_PACIENTE_ASOCIADO])
REFERENCES [dbo].[Datos_Paciente] ([id])
GO
ALTER TABLE [dbo].[Paciente_Paciente_Asociado] CHECK CONSTRAINT [FK_Paciente_Paciente_Asociado_Datos_Paciente]
GO
ALTER TABLE [dbo].[Paciente_Paciente_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Paciente_Asociado_Usuario] FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[Usuario] ([correoID])
GO
ALTER TABLE [dbo].[Paciente_Paciente_Asociado] CHECK CONSTRAINT [FK_Paciente_Paciente_Asociado_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tipo_Usuario] FOREIGN KEY([ID_TIPO_USUARIO])
REFERENCES [dbo].[Tipo_Usuario] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tipo_Usuario]
GO
