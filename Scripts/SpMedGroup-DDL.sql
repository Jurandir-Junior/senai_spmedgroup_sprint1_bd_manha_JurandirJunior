CREATE DATABASE SpMedGroup_Manha

USE SpMedGroup_Manha

CREATE TABLE Clinica (
	IdClinica INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR (200),
	RazaoSocial VARCHAR (200),
	HoraFuncionamento TIME,
	CNPJ VARCHAR (200),
	Endereço VARCHAR (200)
);

CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200)
);

CREATE TABLE Especialidade (
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200)
);

CREATE TABLE Medico (
	IdMedico INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	CRM VARCHAR (200),
	Email VARCHAR (200),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade)
);

CREATE TABLE Paciente (
	IdPaciente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	Email VARCHAR (200),
	DataNascimento DATE,
	Telefone BIGINT,
	RG BIGINT,
	CPF BIGINT,
	Endereço VARCHAR (200),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Administrador (
	IdAdministrador INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	Email VARCHAR (200),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Agendamento (
	IdAgendamento INT PRIMARY KEY IDENTITY,
	DataAgendamento DATETIME,
	DataConsulta DATETIME,
	IdAdministrador INT FOREIGN KEY REFERENCES Administrador (IdAdministrador)
);

CREATE TABLE Consulta (
	IdConsulta INT PRIMARY KEY IDENTITY,
	Situacao VARCHAR (200),
	IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),
	IdPaciente INT FOREIGN KEY REFERENCES Paciente (IdPaciente),
	IdAgendamento INT FOREIGN KEY REFERENCES Agendamento (IdAgendamento)
);