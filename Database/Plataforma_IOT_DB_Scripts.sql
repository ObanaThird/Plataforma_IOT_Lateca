CREATE DATABASE DB_PLATAFORMA_IOT;

USE DB_PLATAFORMA_IOT;

CREATE TABLE laboratorio (
	idLaboratorio INT PRIMARY KEY AUTO_INCREMENT,
    nomeLaboratorio VARCHAR(50) NOT NULL,
    lotacaoMaxima INT NOT NULL
);

CREATE TABLE inventario (
	idItem INT PRIMARY KEY AUTO_INCREMENT,
    nomeItem VARCHAR(200) NOT NULL,
    fabricanteItem VARCHAR(50) DEFAULT NULL,
    nroDeSerieItem VARCHAR(50) DEFAULT NULL,
    qtdItem INT NOT NULL,
    tipoItem VARCHAR(3) NOT NULL,
    localizacaoItem VARCHAR(100) NOT NULL,
    referenciaItem VARCHAR(100) DEFAULT NULL,
    descricaoItem VARCHAR(50) NOT NULL,
    ultimaVerificacao DATE NOT NULL,
    statusItem INT NOT NULL,
    obsItem VARCHAR(50) DEFAULT NULL,
    categoriaItem VARCHAR(15) NOT NULL,
    valUniItem DECIMAL(10,2) NOT NULL,
    valTotalItem DECIMAL(10,2) NOT NULL,
    idLaboratorio_FK INT,
    CONSTRAINT fk_inventario_laboratorio FOREIGN KEY (idLaboratorio_FK) REFERENCES laboratorio(idLaboratorio)
);

CREATE TABLE sensoresLaboratorio (
	idVerificacao INT PRIMARY KEY AUTO_INCREMENT,
    temperatura DECIMAL(5,2) NOT NULL,
    umidade DECIMAL(5,2) NOT NULL,
    luminosidade DECIMAL(7,2) NOT NULL,
    lotacaoAtual INT NOT NULL,
    ultimaVerificacao DATETIME NOT NULL,
    idLaboratorio_FK INT,
    CONSTRAINT fk_sensores_laboratorio FOREIGN KEY (idLaboratorio_FK) REFERENCES laboratorio(idLaboratorio)
);