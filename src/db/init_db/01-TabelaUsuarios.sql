CREATE DATABASE inventario

CREATE TABLE "Setores" (
    "ID" INT NOT NULL SERIAL,
    "NomeSetor" VARCHAR(25) NOT NULL,
)

CREATE TABLE "Funcionarios" (
    "ID" INT NOT NULL SERIAL,
    "NomeFuncionario" VARCHAR(55) NOT NULL,
)

--> tERMINAR BANCO