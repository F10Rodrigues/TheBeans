/****** Object:  Table [dbo].[Documento]    Script Date: 06/05/2018 22:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Documento](
	[id_documento] [int] NOT NULL,
	[numero_documento] [int] IDENTITY(1,1) NOT NULL,
	[serie] [varchar](5) NOT NULL,
	[fornecedor] [varchar](50) NOT NULL,
	[cnpj] [varchar](14) NOT NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[numero_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fornecedor](
	[id_fornecedor] [int] IDENTITY(1,1) NOT NULL,
	[cnpj] [varchar](14) NOT NULL,
	[ie] [varchar](12) NOT NULL,
	[razao_social] [varchar](50) NOT NULL,
	[telefone] [varchar](11) NOT NULL,
	[celular] [varchar](12) NULL,
	[endereco] [varchar](50) NOT NULL,
	[cep] [varchar](8) NOT NULL,
	[numero] [int] NOT NULL,
	[bairro] [varchar](30) NOT NULL,
	[estado] [varchar](20) NOT NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_fornecedor] PRIMARY KEY CLUSTERED 
(
	[id_fornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[funcao]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcao](
	[id_funcao] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[pode_aprovar] [varchar](50) NOT NULL,
	[pode_cadastrar] [varchar](50) NOT NULL,
	[pode_pagar] [varchar](50) NOT NULL,
 CONSTRAINT [PK_funcao] PRIMARY KEY CLUSTERED 
(
	[id_funcao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[funcionario]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionario](
	[id_funcionario] [int] NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cpf] [varchar](11) NOT NULL,
	[ctps] [varchar](15) NOT NULL,
	[rg] [varchar](9) NOT NULL,
	[cep] [varchar](8) NOT NULL,
	[celular] [varchar](11) NOT NULL,
	[endereco] [varchar](50) NOT NULL,
	[numero] [int] NOT NULL,
	[bairro] [varchar](30) NOT NULL,
	[estado] [varchar](25) NOT NULL,
	[email] [varchar](50) NULL,
	[id_funcao] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_funcionario] PRIMARY KEY CLUSTERED 
(
	[id_funcao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inter]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inter](
	[id_login] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[senha] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Inter] PRIMARY KEY CLUSTERED 
(
	[id_login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NFe]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NFe](
	[id_nfe] [int] IDENTITY(1,1) NOT NULL,
	[chave_acesso] [varchar](50) NULL,
	[cnpj] [varchar](14) NOT NULL,
	[ie] [varchar](12) NOT NULL,
	[data_emissao] [date] NOT NULL,
	[numero] [int] NOT NULL,
	[serie] [varchar](5) NOT NULL,
	[data_entrada] [date] NOT NULL,
	[base_calc_icms] [float] NULL,
	[valor_icms] [float] NULL,
	[frete_nfe] [float] NULL,
	[desconto] [float] NULL,
	[base_st] [float] NULL,
	[valor_st] [float] NULL,
	[ipi] [float] NULL,
	[valor_produtos] [float] NOT NULL,
	[total] [float] NOT NULL,
 CONSTRAINT [PK_NFe] PRIMARY KEY CLUSTERED 
(
	[id_nfe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[obs_gerente]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[obs_gerente](
	[id_obs_gerente] [int] IDENTITY(1,1) NOT NULL,
	[observacao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_obs_gerente] PRIMARY KEY CLUSTERED 
(
	[id_obs_gerente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pagamento]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pagamento](
	[id_pagamento] [int] IDENTITY(1,1) NOT NULL,
	[vencimento] [date] NOT NULL,
	[tipo] [varchar](10) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[fornecedor] [varchar](50) NOT NULL,
	[valor] [float] NOT NULL,
	[id_observacao] [int] NOT NULL,
	[observacao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_pagamento] PRIMARY KEY CLUSTERED 
(
	[id_pagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[programacao_pagamento]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[programacao_pagamento](
	[id_programacao] [int] IDENTITY(1,1) NOT NULL,
	[cnpj] [varchar](14) NOT NULL,
	[ie] [varchar](12) NOT NULL,
	[data_emissao] [date] NOT NULL,
	[numero] [int] NOT NULL,
	[serie] [varchar](5) NOT NULL,
	[data_entrada] [date] NOT NULL,
	[data_vencimento] [date] NOT NULL,
	[total] [float] NOT NULL,
 CONSTRAINT [PK_programacao_pagamento] PRIMARY KEY CLUSTERED 
(
	[id_programacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rel_documentos]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rel_documentos](
	[id_rel_documentos] [int] IDENTITY(1,1) NOT NULL,
	[data_entrada] [date] NOT NULL,
	[Nfe_CTe] [int] NOT NULL,
	[razao_social] [varchar](50) NOT NULL,
	[valor] [float] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rel_documentos] PRIMARY KEY CLUSTERED 
(
	[id_rel_documentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rel_fornecedores]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rel_fornecedores](
	[id_rel_fornecedores] [int] IDENTITY(1,1) NOT NULL,
	[cnpj] [varchar](14) NOT NULL,
	[razao_social] [varchar](50) NOT NULL,
	[endereco] [varchar](30) NOT NULL,
	[telefone] [varchar](9) NOT NULL,
	[ie] [varchar](12) NOT NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Rel_fornecedores] PRIMARY KEY CLUSTERED 
(
	[id_rel_fornecedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rel_funcionarios]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rel_funcionarios](
	[id_rel_funcionarios] [int] IDENTITY(1,1) NOT NULL,
	[cpf] [varchar](11) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[endereco] [varchar](30) NOT NULL,
	[telefone] [varchar](10) NOT NULL,
	[email] [varchar](50) NULL,
	[funcao] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Rel_funcionarios] PRIMARY KEY CLUSTERED 
(
	[id_rel_funcionarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rel_ged]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rel_ged](
	[id_rel_ged] [int] IDENTITY(1,1) NOT NULL,
	[numero_documento] [int] NOT NULL,
	[serie] [varchar](5) NULL,
	[cnpj] [varchar](14) NOT NULL,
	[fornecedor] [varchar](50) NOT NULL,
	[arquivo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rel_ged] PRIMARY KEY CLUSTERED 
(
	[id_rel_ged] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 06/05/2018 22:59:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](20) NOT NULL,
	[senha] [varchar](20) NOT NULL,
	[nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
