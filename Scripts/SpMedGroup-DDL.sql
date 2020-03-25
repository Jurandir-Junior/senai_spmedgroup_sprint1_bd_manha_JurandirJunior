CREATE DATABASE SpMedGroup_Manha

USE SpMedGroup_Manha

CREATE TABLE Clinica (
	IdClinica INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR (200),
	RazaoSocial VARCHAR (200),
	HoraI TIME,
	HoraF TIME,
	CNPJ VARCHAR (200),
	Endereço VARCHAR (200)
);
GO

CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200)
);
GO

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Email VARCHAR (200),
	Senha VARCHAR (200),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);
GO

CREATE TABLE Especialidade (
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200)
);
GO

CREATE TABLE Medico (
	IdMedico INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	CRM VARCHAR (200),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade)
);
GO

CREATE TABLE Paciente (
	IdPaciente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	DataNascimento DATE,
	Telefone BIGINT,
	RG BIGINT,
	CPF BIGINT,
	Endereço VARCHAR (200),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);
GO

CREATE TABLE Situacao (
	IdSituacao INT PRIMARY KEY IDENTITY,
	Situacao VARCHAR (100)
);
GO

CREATE TABLE Consulta (
	IdConsulta INT PRIMARY KEY IDENTITY,
	DataConsulta DATE,
	IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),
	IdPaciente INT FOREIGN KEY REFERENCES Paciente (IdPaciente),
	IdSituacao INT FOREIGN KEY REFERENCES Situacao (IdSituacao) DEFAULT 1
);
GO
