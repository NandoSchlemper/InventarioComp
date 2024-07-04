-- Inserindo ESTOQUE (padrão) e N/A em setor
INSERT INTO Setor (Nome) VALUES ('Estoque') ON CONFLICT (Nome) DO NOTHING;

-- Inserindo funcionario Coringa
INSERT INTO Funcionario (SetorID, Nome)
VALUES (1, 'Empresa') 
ON CONFLICT (SetorID, Nome) DO NOTHING;

INSERT INTO SlotMemória (Marca, Quantidade) 
VALUES ('N/A', 0)
ON CONFLICT (Marca, Quantidade) DO NOTHING;

INSERT INTO Monitores (Marca, TamanhoTela)
VALUES ('N/A', 'N/A')
ON CONFLICT (Marca, TamanhoTela) DO NOTHING;

INSERT INTO Periféricos (Tipo)
VALUES ('N/A')
ON CONFLICT (Tipo) DO NOTHING;
