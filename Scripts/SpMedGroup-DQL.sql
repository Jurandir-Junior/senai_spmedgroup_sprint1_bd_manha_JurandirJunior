USE SpMedGroup_Manha

SELECT * FROM Clinica

SELECT * FROM TipoUsuario

SELECT * FROM Especialidade

SELECT IdUsuario, Titulo AS TipoUsuario, Email, Senha FROM Usuario
INNER JOIN TipoUsuario ON Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario

SELECT Usuario.IdUsuario, Nome, CRM, Email, NomeFantasia AS Clinica, Especialidade.Titulo AS Especialidade FROM Medico
INNER JOIN Usuario ON Medico.IdUsuario = Usuario.IdUsuario
INNER JOIN Clinica ON Medico.IdClinica = Clinica.IdClinica
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
WHERE Especialidade.IdEspecialidade = 3;

SELECT Usuario.IdUsuario, Nome,CAST(MONTH(DataNascimento) AS VARCHAR) + '/' +
				   CAST(DAY(DataNascimento) AS VARCHAR) + '/' +
				   CAST(YEAR(DataNascimento) AS VARCHAR) AS "DataNascimento", Telefone, RG, CPF, Endereço FROM Paciente
INNER JOIN Usuario ON Paciente.IdUsuario = Usuario.IdUsuario

SELECT Nome, DATEDIFF(YEAR,DataNascimento,GETDATE()) AS "Idade" FROM Paciente

SELECT Situacao, Medico.Nome AS Medico, Paciente.Nome AS Paciente, DataConsulta FROM Consulta
INNER JOIN Medico ON Consulta.IdMedico = Medico.IdMedico
INNER JOIN Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
INNER JOIN Situacao ON Consulta.IdSituacao = Situacao.IdSituacao

