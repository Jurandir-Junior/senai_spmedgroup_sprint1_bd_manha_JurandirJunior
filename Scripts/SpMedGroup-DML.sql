USE SpMedGroup_Manha

INSERT INTO Clinica (NomeFantasia, RazaoSocial, HoraFuncionamento, CNPJ, Endereço)
VALUES ('Clinica Possarle','SP Med Group','8:00','86400902000130','Alameda Barão de Limeira,532')

INSERT INTO Especialidade (Titulo)
VALUES ('Anestesiologia'),
	   ('Cirurgia Geral'),
	   ('Psiquiatria'),
	   ('Pediatria')

INSERT INTO TipoUsuario (Titulo)
VALUES ('Administrador'),
	   ('Medico'),
	   ('Paciente')

INSERT INTO Administrador (Email, Nome, IdTipoUsuario)
VALUES ('adm@spmedicalgroup.com.br', 'Junior', 1)

INSERT INTO Medico (Nome, CRM, Email, IdTipoUsuario, IdClinica, IdEspecialidade)
VALUES ('Ricardo Lemos','54326-SP','ricardo.lemos@spmedicalgroup.com.br',2,4,1),
	   ('Roberto Possarle','53452-SP','roberto.possarle@spmedicalgroup.com.br',2,4,3),
	   ('Helena Strada','65463-SP','helena.souza@spmedicalgroup.com.br',2,4,4)

INSERT INTO Paciente (Nome, Email, DataNascimento, Telefone, RG, CPF, Endereço, IdTipoUsuario)
VALUES ('Ligia','ligia@gmail.com','13/10/1983','1134567654','435225435','94839859000','Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000',3),
	   ('Alexandre','alexandre@gmail.com','23/07/2001','11987656543','326543457','73556944057','Av. Paulista 1578, Bela Vista, São Paulo - SP, 01310-200',3),
	   ('João','joao@hotmail.com','27/08/1975','1176566377','325444441','91305348010','R. Ver. Geraldo de Camargo 66, Santa Luzia, Ribeirão Pires - SP, 09405-380',3),
	   ('Mariana','mariana@outlook.com','05/03/2018','','545662668','13771913039','R. Sao Antonio 232, Vila Universal, Barueri - SP, 06407-140',3)

INSERT INTO Agendamento (DataAgendamento, DataConsulta, IdAdministrador)
VALUES ('23/01/2020 12:30:00','12/02/2020 7:00:00',1),
	   ('12/02/2020 8:00:00','14/02/2020 12:30:00',1),
	   ('13/02/2020 10:20:00','17/02/2020 9:00:00',1)

INSERT INTO Consulta (Situacao, IdMedico, IdPaciente, IdAgendamento)
VALUES ('Realizado',4,4,1),
	   ('Cancelado',3,3,2),
	   ('Agendado',2,2,3)

