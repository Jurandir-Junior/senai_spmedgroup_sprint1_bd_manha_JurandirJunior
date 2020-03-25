USE SpMedGroup_Manha

INSERT INTO Clinica (NomeFantasia, RazaoSocial, HoraI, HoraF, CNPJ, Endereço)
VALUES ('Clinica Possarle','SP Med Group','8:00', '20:00', '86400902000130','Alameda Barão de Limeira,532')
GO

INSERT INTO Especialidade (Titulo)
VALUES ('Anestesiologia'),
	   ('Cirurgia Geral'),
	   ('Psiquiatria'),
	   ('Pediatria')
GO

INSERT INTO TipoUsuario (Titulo)
VALUES ('Administrador'),
	   ('Medico'),
	   ('Paciente')
GO

INSERT INTO Usuario (Email, Senha, IdTipoUsuario)
VALUES ('ricardo.lemos@spmedicalgroup.com.br', 'ricardo123',2),
	   ('roberto.possarle@spmedicalgroup.com.br', 'roberto123',2),
	   ('helena.souza@spmedicalgroup.com.br', 'helena123',2),
	   ('ligia@gmail.com', 'ligia123',3),
	   ('alexandre@gmail.com', 'alexandre123',3),
	   ('joao@hotmail.com', 'joao123',3),
	   ('mariana@outlook.com', 'mariana123',3),
	   ('adm@adm.com','adm123',1)
GO

INSERT INTO Medico (Nome, CRM, IdUsuario, IdClinica, IdEspecialidade)
VALUES ('Ricardo Lemos','54326-SP', 1,1,1),
	   ('Roberto Possarle','53452-SP', 2,1,3),
	   ('Helena Strada','65463-SP', 3,1,4)
GO

INSERT INTO Paciente (Nome, DataNascimento, Telefone, RG, CPF, Endereço, IdUsuario)
VALUES ('Ligia','13/10/1983','1134567654','435225435','94839859000','Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000',4),
	   ('Alexandre','23/07/2001','11987656543','326543457','73556944057','Av. Paulista 1578, Bela Vista, São Paulo - SP, 01310-200',5),
	   ('João','27/08/1975','1176566377','325444441','91305348010','R. Ver. Geraldo de Camargo 66, Santa Luzia, Ribeirão Pires - SP, 09405-380',6),
	   ('Mariana','05/03/2018','','545662668','13771913039','R. Sao Antonio 232, Vila Universal, Barueri - SP, 06407-140',7)
GO

INSERT INTO Situacao (Situacao)
VALUES ('Pendente'),
	   ('Realizado'),
	   ('Cancelado')
GO

INSERT INTO Consulta (DataConsulta, IdMedico, IdPaciente, IdSituacao)
VALUES ('23/03/2020',3,4,2),
	   ('27/03/2020',1,3,3),
	   ('02/04/2020',2,2,1)
GO
