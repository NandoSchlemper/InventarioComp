CREATE DATABASE IF NOT EXISTS inventario;

\c inventario;

CREATE TABLE Setor (
    ID SERIAL PRIMARY KEY,
    Nome TEXT NOT NULL UNIQUE,
);

CREATE TABLE Computers (
    -- ID do Computador + ID do usuário do mesmo
    ID SERIAL PRIMARY KEY,
    Funcionario_ID INTEGER REFERENCES Funcionario (ID),

    Tipo TEXT NOT NULL, -- Computador OU Notebook
    
    -- Processador
    CPU_ID INTEGER REFERENCES Processador (ID),
    CPU_Nucleos INTEGER NOT NULL,
    CPU_Threads INTEGER NOT NULL,

    -- Armazenamento
    Arm_Tipo_1 TEXT NOT NULL, -- HD ou SSD
    Arm_Qnt_1 TEXT NOT NULL, -- 1T, 255GB etc...
    Arm_Tipo_2 TEXT,
    Arm_Qnt_2 TEXT,
    Arm_Tipo_3 TEXT,
    Arm_Qnt_3 TEXT,

    -- Periféricos
    Mouse_ID INTEGER REFERENCES Periféricos (ID),
    Teclado_ID INTEGER REFERENCES Periféricos (ID),
    Monitor_ID INTEGER REFERENCES Monitores (ID),

    -- Memória
    Memória_ID INTEGER REFERENCES Memória (ID),

    -- Tomada para evitar queimar após queda de luz
    Tomada_Especial BOOLEAN NOT NULL
)



CREATE TABLE Memória (
    ID SERIAL PRIMARY KEY,
    Marca TEXT NOT NULL, 
    Quantidade INTEGER NOT NULL, -- Ex: 8, 16 (GB)
    Soldado BOOLEAN NOT NULL,
    Tipo TEXT NOT NULL, -- Ex: DDIM4
    SlotsDisponíveis INTEGER NOT NULL,
    Frequencia INTEGER NOT NULL,
    Slot2 INTEGER REFERENCES SlotMemória (ID),
    Slot3 INTEGER REFERENCES SlotMemória (ID),
    Slot4 INTEGER REFERENCES SlotMemória (ID),
)

CREATE TABLE SlotMemória (
    ID SERIAL PRIMARY KEY,
    Marca TEXT NOT NULL
    Quantidade INTEGER NOT NULL,
)
    
CREATE TABLE Monitores (
    ID SERIAL PRIMARY KEY,
    Marca TEXT NOT NULL,
    TamanhoTela TEXT NOT NULL, -- Ex: 720x1250
    Wireless BOOLEAN,
    Nota INTEGER
)
    
CREATE TABLE Periféricos (
    ID SERIAL PRIMARY KEY,
    Tipo TEXT NOT NULL UNIQUE, -- Mouse, Teclado, Carregador, Telas, Cabos
    Marca TEXT, -- Marca caso tenha uma
    Wireless BOOLEAN,
    Nota INTEGER
)

CREATE TABLE CPU (
    ID SERIAL PRIMARY KEY,
    Familia TEXT NOT NULL UNIQUE,
    Número_Modelo TEXT NOT NULL,
)

    
CREATE TABLE Funcionario (
    ID SERIAL PRIMARY KEY,
    SetorID INTEGER REFERENCES Setores (ID),
    Nome TEXT NOT NULL UNIQUE
);

