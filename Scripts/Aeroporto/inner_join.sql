SELECT 
    A.IdAeronave,
    A.NomeAeronave,
    A.Ativo,
    MA.NomeModelo,
    MA.AnoModelo,
    MA.CapacidadePoltronas,
    MA.CapacidadeCombustivel,
    P.NomePiloto
FROM 
    Aeronave A
INNER JOIN 
    ModeloAeronave MA ON A.ModeloAeronave = MA.IdModelo
INNER JOIN 
    Pilotos P ON A.Piloto = P.IdPiloto;

