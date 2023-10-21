USE bd_vsconnect2;


INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Jessica",
    "jessica@email.com",
    "senai@134",
    "Rua Amadis, 50",
    "04221000",
    0
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Thiago Nascimento",
    "thiago@email.com",
    "senai@134",
    "Rua São José, 200 - Itapera - São Luís/MA",
    "65092055",
    0
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Odirlei Assis",
    "odirlei@email.com",
    "senai@134",
    "Rua São José, 200 - Itapera - São Luís/MA",
    "65092055",
    0
);

-- select para visualizar TODOS os dados DA tabela usuario
SELECT * FROM tb_usuario;


INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "css");

-- SELECIONA TODOS os dados DA tabela usuario ONDE o id seja...
SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN('544baaa7-6ed2-11ee-a834-b445067b7fa0');
-- DELETA o dado DA tabela usuario ONDE o id seja...
DELETE FROM tb_usuario WHERE id = UUID_TO_BIN('544baaa7-6ed2-11ee-a834-b445067b7fa0');
-- ATUALIZE a tabela usuario e defina que o tipo de usuario seja = 1, apenas ONDE o id seja...
UPDATE tb_usuario SET tipo_usuario = 1 WHERE id = UUID_TO_BIN('56e08cf0-6ed2-11ee-a834-b445067b7fa0');




INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("51703c23-6ed2-11ee-a834-b445067b7fa0"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("51703c23-6ed2-11ee-a834-b445067b7fa0"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("51703c23-6ed2-11ee-a834-b445067b7fa0"), NULL);




INSERT INTO tb_tech_servico VALUES (
UUID_TO_BIN("84778f1b-6ed3-11ee-a834-b445067b7fa0"), UUID_TO_BIN("601e29f8-6ed9-11ee-a834-b445067b7fa0") 
);

INSERT INTO tb_tech_servico VALUES (
UUID_TO_BIN("64b3b4e2-6ed3-11ee-a834-b445067b7fa0"), UUID_TO_BIN("601e2edd-6ed9-11ee-a834-b445067b7fa0") 
);

INSERT INTO tb_tech_servico VALUES (
UUID_TO_BIN("84778f1b-6ed3-11ee-a834-b445067b7fa0"), UUID_TO_BIN("601e2fb9-6ed9-11ee-a834-b445067b7fa0") 
);

SELECT * FROM tb_dev_tech;

INSERT INTO tb_dev_tech VALUES (
UUID_TO_BIN("56e08cf0-6ed2-11ee-a834-b445067b7fa0"),UUID_TO_BIN("84778f1b-6ed3-11ee-a834-b445067b7fa0")
);
SELECT * FROM tb_servico;

SELECT BIN_TO_UUID(id), nome, tipo_usuario from tb_usuario;

SELECT BIN_TO_UUID(id), nome from tb_tech;

SELECT BIN_TO_UUID(id), titulo from tb_servico;

SELECT * FROM tb_tech_servico;

SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("56e08cf0-6ed2-11ee-a834-b445067b7fa0"),
	UUID_TO_BIN("601e29f8-6ed9-11ee-a834-b445067b7fa0"),
	5000.00
);

