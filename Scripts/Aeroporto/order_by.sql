SELECT 
    a.IdAeronave, 
    a.NomeAeronave, 
    m.NomeModelo 
FROM 
    Aeronave a
JOIN 
    ModeloAeronave m ON a.ModeloAeronave = m.IdModelo
ORDER BY 
    m.NomeModelo;
    
SELECT
    DATE(TempoDecolagem) AS Dia,
    Aeronave,
    COUNT(*) AS NumeroDeVoos
FROM Voo
GROUP BY DATE(TempoDecolagem), Aeronave
ORDER BY Dia, Aeronave;

SELECT
    YEAR(TempoDecolagem) AS Ano,
    WEEK(TempoDecolagem) AS Semana,
    Aeronave,
    COUNT(*) AS NumeroDeVoos
FROM Voo
GROUP BY YEAR(TempoDecolagem), WEEK(TempoDecolagem), Aeronave
ORDER BY Ano, Semana, aeronave;

SELECT
    YEAR(TempoDecolagem) AS Ano,
    MONTH(TempoDecolagem) AS Mes,
    Aeronave,
    COUNT(*) AS NumeroDeVoos
FROM Voo
GROUP BY YEAR(TempoDecolagem), MONTH(TempoDecolagem), Aeronave
ORDER BY Ano, Mes, aeronave;

SELECT DISTINCT
    v.IdVoo,
    v.Partida,
    v.Destino,
    v.PrevistoDecolagem,
    v.PrevistoPouso,
    v.Aeronave
FROM Voo v
JOIN Aeroporto a ON v.Decolagem = a.IdAeroporto OR v.Destino = a.IdAeroporto
WHERE a.sigla = 'GRU'; -- Troque a sigla para saber de outros
    
-- d) Exibição de poltronas disponíveis em um determinado avião
SELECT
    p.IdPoltrona,
    p.NumPoltrona
FROM Poltrona p
LEFT JOIN Passagem pa ON p.IdPoltrona = pa.Poltrona AND pa.VooNum = 1 
WHERE pa.Poltrona IS NULL;

