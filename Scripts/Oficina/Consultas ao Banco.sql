
SELECT c.Id, c.Nome, COUNT(s.Id) AS TotalAtendimentos
FROM Cliente p
LEFT JOIN Carro c ON p.Id = c.ClienteId
LEFT JOIN Servico s ON c.Id = s.CarroId
GROUP BY p.Id, p.Nome
ORDER BY AtendimentosTotal DESC;

-- Veiculos que mais chegam na oficina
SELECT c.Marca, c.Modelo, COUNT(s.Id) AS AtendimentosTotal
FROM Carro c
LEFT JOIN Servico s ON c.Id = s.CarroId
GROUP BY c.Marca, c.Modelo
ORDER BY AtendimentosTotal DESC;

