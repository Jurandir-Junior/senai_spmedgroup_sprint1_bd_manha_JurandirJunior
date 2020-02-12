USE SpMedGroup_Manha

SELECT * FROM Clinica

SELECT * FROM TipoUsuario

SELECT * FROM Especialidade

SELECT Nome, CRM, Email,TipoUsuario.Titulo AS TipoUsuario, NomeFantasia AS Clinica, Especialidade.Titulo AS Especialidade FROM Medico
INNER JOIN TipoUsuario ON Medico.IdTipoUsuario = TipoUsuario.IdTipoUsuario
INNER JOIN Clinica ON Medico.IdClinica = Clinica.IdClinica
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade

SELECT Nome, Email, DataNascimento, Telefone, RG, CPF, Endereço, Titulo AS TipoUsuario FROM Paciente
INNER JOIN TipoUsuario ON Paciente.IdTipoUsuario = TipoUsuario.IdTipoUsuario

SELECT Email, Nome, Titulo AS TipoUsuario FROM Administrador
INNER JOIN TipoUsuario ON Administrador.IdTipoUsuario = TipoUsuario.IdTipoUsuario

SELECT DataAgendamento, DataConsulta, Nome AS Administrador FROM Agendamento
INNER JOIN Administrador ON Agendamento.IdAdministrador = Administrador.IdAdministrador

SELECT Situacao, Medico.Nome AS Medico, Paciente.Nome AS Paciente, DataConsulta FROM Consulta
INNER JOIN Medico ON Consulta.IdMedico = Medico.IdMedico
INNER JOIN Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
INNER JOIN Agendamento ON Consulta.IdAgendamento = Agendamento.IdAgendamento
