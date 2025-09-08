CREATE TABLE parada (
    id INT IDENTITY (1, 1) PRIMARY KEY,
    nome_parada VARCHAR (50),
    data_inicio DATETIME
    data_fim DATETIME
);

CREATE TABLE subcronograma (
    id INT IDENTITY (1, 1) PRIMARY KEY,
    subcronograma VARCHAR (20)                  # Opções: Manutenção/Operação/Engenharia
);

CREATE TABLE area (
    id INT IDENTITY (1, 1) PRIMARY KEY,
    area VARCHAR (20)                           # Opções: Pátio/Celulose/MP3/MP4/Recuperação/Utilidades/ETE
);

CREATE TABLE subarea (
    id INT IDENTITY (1, 1) PRIMARY KEY,
    subarea VARCHAR (20)                        # Opções: blowheat/linhaB/linhaC/NPL....
);

CREATE TABLE disciplina (
    id INT IDENTITY (1, 1) PRIMARY KEY,
    disciplina VARCHAR (20)                     # Opções: ELEA1/INSTA1/TUBA1/MECA1/OPEA1/LUBA1/SGA1/INSPA1....
);

CREATE TABLE usuarios (
    id INT IDENTITY (1, 1) PRIMARY KEY,
    nome_usuario VARCHAR (80),
    senha_usuario VARCHAR (20),
    cod_disciplina_usuarios INT,                # Configurar FK
    cod_area_usuarios INT                       # Configurar FK
);

CREATE TABLE cronograma (
    id INT IDENTITY (1, 1) PRIMARY KEY,
    id_parada INT,                              # Configurar FK
    cod_atividade_pai INT,
    numero_os VARCHAR (20),
    descrição_os VARCHAR (100),
    cod_atividade INT,
    cod_predecessor INT,
    cod_subcronograma_cronograma INT,           # Configurar FK
    cod_area_cronograma INT,                    # Configurar FK
    cod_subarea_cronograma INT,                 # Configurar FK
    cod_disciplina_cronograma INT,              # Configurar FK
    data_inicio DATETIME,
    data_fim DATETIME,
    duracao_original DECIMAL,
    duracao_atualizada DECIMAL,
    percentual_concluído DECIMAL,
    responsável_apontamento INT                 # Configurar FK
)