use ecommercelilienana;

select * from empresa;
select * from funcionario;
select * from notafiscal;
select * FrOm ItEm;
SELECT * FROM PESSOA;
SELECT * FROM PRODUTO;
SELECT * FROM CATEGORIA;

#INSERÇÃO DE EMPRESAS
INSERT INTO EMPRESA(CNPJ,Nome)VALUES('48.642.635/0003-54','Mercado Preso');
INSERT INTO EMPRESA(CNPJ,Nome)VALUES('48.332.635/0003-54','Amazon Decepticon');
INSERT INTO EMPRESA(CNPJ,Nome)VALUES('48.622.635/0002-54','Brasileiras');
INSERT INTO EMPRESA(CNPJ,Nome)VALUES('38.332.635/0123-54','Jacaranda');
INSERT INTO EMPRESA(CNPJ,Nome)VALUES('58.622.635/0006-74','Mercado Agro');

#INSERÇÃO DE PESSOAS
INSERT INTO PESSOA(CPF,NOME,SEXO,TELEFONE,EMAIL,CEP,RUA,CIDADE,NUMERO,ESTADO) VALUES ('111.111.111-11','João Felipe','M','(86)98834-9472','popis@gmail.com','64028-123','Rua do joao','Teresina','1311','PI');
INSERT INTO PESSOA(CPF,NOME,SEXO,TELEFONE,EMAIL,CEP,RUA,CIDADE,NUMERO,ESTADO,REFERENCIA) VALUES ('222.222.222-22','Alícia','F','(89)94002-8922','lili@gmail.com','64025-080','Rua da lili','Peritoró','2408','MA','Do lado do cemitério');
INSERT INTO PESSOA(CPF,NOME,SEXO,TELEFONE,EMAIL,CEP,RUA,CIDADE,NUMERO,ESTADO,REFERENCIA) VALUES ('333.333.333-33','Geovanna Bruno','F','(89)99402-5680','nana@outlook.com','64089-000','Rua da nana','Canto do abacaxi','1003','PI','Na frente do bar/budega');
INSERT INTO PESSOA(CPF,NOME,SEXO,TELEFONE,EMAIL,CEP,RUA,CIDADE,NUMERO,ESTADO,REFERENCIA) VALUES ('444.444.444-44','Victor Emannoel','M','(99)99994-5780','vivi@protoMail.com','69696-969','Rua do vivi','Barro mole','1309','AC','Do lado do fóssil');
INSERT INTO PESSOA(CPF,NOME,SEXO,TELEFONE,EMAIL,CEP,RUA,CIDADE,NUMERO,ESTADO,REFERENCIA) VALUES ('555.555.555-55','Guilherme Guigo','M','(13)96924-1945','guiguinho@Hotmail.com','01939-450','Rua Parafusos','Baixos','1509','RR','No fundo do mercado Útil');

INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Eletrônicos');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Eletrodomésticos');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Utensílios de Cozinha');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Livros e eBooks');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Maquiagem');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Esportes e Fitness');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Móveis e Decoração');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Informática e Acessórios');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Cuidados Pessoais e Higiene');
INSERT INTO CATEGORIA(nomeCategoria) VALUES ('Ferramentas e Construção');

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(25, 5999.00, 'Smartphone Ultra X (12GB RAM, 108MP)', 1),
(15, 3499.00, 'Smart TV LED 55" (4K Ultra HD)', 1),
(50, 999.00, 'Fone de Ouvido Noise Cancelling (30h bateria)', 1),
(40, 450.00, 'Caixa de Som Portátil Bluetooth (IPX7)', 1),
(35, 780.00, 'Relógio Inteligente Esportivo (GPS integrado)', 1),
(8, 12500.00, 'Câmera Mirrorless Profissional (8K)', 1),
(10, 4800.00, 'Console de Última Geração (4K 120fps)', 1),
(30, 2900.00, 'Tablet Pro 11" (Tela Liquid Retina)', 1),
(60, 250.00, 'Acessório para Streaming 4K', 1),
(20, 1500.00, 'Projetor Portátil Mini (100 polegadas)', 1);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(12, 4199.00, 'Geladeira Frost Free Inox 450L (Inverter)', 2),
(18, 1890.00, 'Máquina de Lavar 15kg (12 programas)', 2),
(55, 389.00, 'Air Fryer Digital 5 Litros (8 funções)', 2),
(22, 1150.00, 'Aspirador de Pó Robô Inteligente (Mapeamento)', 2),
(28, 650.00, 'Micro-ondas com Grill 30 Litros', 2),
(14, 1950.00, 'Fogão 5 Bocas com Mesa de Vidro', 2),
(9, 2500.00, 'Lava-louças Compacta (8 serviços)', 2),
(33, 1400.00, 'Cafeteira Expresso Automática (Mói Grão)', 2),
(45, 189.90, 'Ventilador de Coluna Silencioso (6 pás)', 2),
(50, 220.00, 'Ferro de Passar a Vapor Profissional', 2);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(80, 599.00, 'Conjunto de Panelas Antiaderente (5 peças)', 3),
(95, 150.00, 'Faca Chef Santoku 8" (Aço Inox Forjado)', 3),
(120, 65.00, 'Balança Digital de Cozinha (10kg)', 3),
(70, 280.00, 'Mixer de Mão 3 em 1 (com Processador)', 3),
(150, 45.00, 'Tábua de Corte em Bambu (Sustentável)', 3),
(100, 89.90, 'Jogo de Copos Long Drink (6 unidades)', 3),
(60, 175.00, 'Espremedor de Frutas Elétrico (Anti-gotejamento)', 3),
(45, 95.00, 'Abridor de Vinho Elétrico (USB)', 3),
(110, 35.00, 'Ralador de Queijo Rotativo (Lâminas Intercambiáveis)', 3),
(75, 59.90, 'Forma de Silicone Reutilizável para Air Fryer', 3);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(300, 49.90, 'Livro: A Biblioteca da Meia-Noite (Ficção)', 4),
(250, 39.90, 'Livro: O Poder do Hábito (Best-seller)', 4),
(999, 29.90, 'Ebook: O Guia do Mochileiro das Galáxias', 4),
(180, 75.00, 'Livro: Cozinha Saudável para Iniciantes (Receitas)', 4),
(210, 89.90, 'Livro: Introdução à Linguagem SQL (Manual Prático)', 4),
(150, 199.90, 'Box Set: Crônicas de Nárnia (7 Volumes)', 4),
(280, 45.00, 'Livro: O Milagre da Manhã (Autoajuda)', 4),
(320, 25.00, 'Livro: Dom Casmurro (Literatura Brasileira)', 4),
(90, 150.00, 'Livro: História da Arte Moderna (Volume Ilustrado)', 4),
(999, 19.90, 'Ebook: 10 Passos para o Marketing Digital', 4);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(150, 69.90, 'Base Líquida Matte HD (Alta Cobertura)', 5),
(120, 95.00, 'Paleta de Sombras Neutras (12 Cores)', 5),
(180, 42.00, 'Corretivo Líquido Iluminador (Disfarça Olheiras)', 5),
(200, 35.00, 'Máscara de Cílios Volume Extremo (À Prova D''água)', 5),
(80, 180.00, 'Kit de Pincéis Profissionais (10 Peças)', 5),
(250, 29.90, 'Batom Matte Vermelho Clássico (Longa Duração)', 5),
(170, 55.00, 'Blush Compacto Pêssego (Acabamento Acetinado)', 5),
(220, 38.00, 'Delineador Líquido Carbon Black (Ponta Fina)', 5),
(190, 52.00, 'Primer Facial Minimiza Poros (Controla Oleosidade)', 5),
(160, 79.90, 'Spray Fixador de Maquiagem (Até 16 Horas)', 5);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(70, 210.00, 'Kit de Halteres Emborrachados (Par 5kg)', 6),
(90, 550.00, 'Tênis de Corrida Performance (Amortecimento Responsivo)', 6),
(130, 120.00, 'Garrafa Térmica Aço Inox 1L (24h Gelado)', 6),
(110, 85.00, 'Tapete de Yoga Antiderrapante (6mm TPE)', 6),
(150, 49.90, 'Corda de Pular com Contador Digital', 6),
(30, 1100.00, 'Bicicleta Ergométrica Vertical (8 Níveis)', 6),
(95, 75.00, 'Luva de Musculação com Suporte de Pulso', 6),
(65, 130.00, 'Bola de Futebol de Campo Profissional', 6),
(40, 1500.00, 'Relógio GPS Multiesporte (Natação, Corrida)', 6),
(100, 199.00, 'Kit Elástico Extensor de Resistência (5 Níveis)', 6);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(15, 3800.00, 'Sofá Retrátil 3 Lugares (Tecido Suede)', 7),
(10, 2500.00, 'Mesa de Jantar 6 Cadeiras (Tampo de Vidro)', 7),
(50, 320.00, 'Luminária de Chão Industrial (Cúpula Ajustável)', 7),
(85, 140.00, 'Conjunto de Nichos Decorativos (3 Peças MDF)', 7),
(45, 450.00, 'Tapete para Sala Kilim (Design Geométrico)', 7),
(20, 2990.00, 'Cama Box Casal com Baú (Molas Ensacadas)', 7),
(60, 185.00, 'Cortina Blackout 2,80m x 2,30m', 7),
(75, 199.00, 'Espelho de Parede Redondo Adnet (Alça de Couro)', 7),
(35, 750.00, 'Aparador Buffet com Gavetas (Pés Palito)', 7),
(110, 60.00, 'Vaso Decorativo de Cerâmica Escandinavo', 7);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(20, 6800.00, 'Notebook Gamer I7 (16GB RAM, RTX)', 8),
(35, 1499.00, 'Monitor LED Curvo 27" (144Hz, 1ms)', 8),
(70, 399.00, 'Teclado Mecânico RGB (Switches Brown)', 8),
(80, 249.00, 'Mouse Gamer Sem Fio (16000 DPI)', 8),
(55, 650.00, 'Roteador Wi-Fi Tri-Band (Tecnologia Mesh)', 8),
(65, 380.00, 'HD Externo Portátil 2TB (USB 3.0)', 8),
(40, 799.00, 'Impressora Multifuncional Tanque (Baixo Custo)', 8),
(90, 160.00, 'Webcam Full HD 1080p (Microfone Integrado)', 8),
(120, 89.00, 'Hub USB-C 7 em 1 (HDMI 4K)', 8),
(100, 55.00, 'Mousepad Grande Estendido (Superfície Control)', 8);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(200, 35.00, 'Shampoo Anticaspa Intensivo (Alívio Rápido)', 9),
(180, 32.00, 'Condicionador Reparação Total (Com Queratina)', 9),
(150, 58.00, 'Creme Hidratante Corporal Vegano (48h Hidratação)', 9),
(60, 350.00, 'Escova de Dentes Elétrica Sônica (5 Modos)', 9),
(75, 199.00, 'Aparelho de Barbear Recarregável (3 Lâminas)', 9),
(190, 85.00, 'Protetor Solar Facial FPS 70 (Toque Seco)', 9),
(130, 49.00, 'Kit de Máscaras Faciais Detox (Carvão Ativado)', 9),
(220, 15.00, 'Desodorante Roll-on Sem Perfume (48h)', 9),
(250, 12.00, 'Fio Dental com Flúor (Prevenção Cáries)', 9),
(140, 40.00, 'Óleo Corporal Pós-Banho (Rápida Absorção)', 9);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(200, 35.00, 'Shampoo Anticaspa Intensivo (Alívio Rápido)', 9),
(180, 32.00, 'Condicionador Reparação Total (Com Queratina)', 9),
(150, 58.00, 'Creme Hidratante Corporal Vegano (48h Hidratação)', 9),
(60, 350.00, 'Escova de Dentes Elétrica Sônica (5 Modos)', 9),
(75, 199.00, 'Aparelho de Barbear Recarregável (3 Lâminas)', 9),
(190, 85.00, 'Protetor Solar Facial FPS 70 (Toque Seco)', 9),
(130, 49.00, 'Kit de Máscaras Faciais Detox (Carvão Ativado)', 9),
(220, 15.00, 'Desodorante Roll-on Sem Perfume (48h)', 9),
(250, 12.00, 'Fio Dental com Flúor (Prevenção Cáries)', 9),
(140, 40.00, 'Óleo Corporal Pós-Banho (Rápida Absorção)', 9);

INSERT INTO PRODUTO (quantEstoque, precoProduto, descProduto, idCategoria) VALUES
(40, 450.00, 'Parafusadeira/Furadeira de Impacto (20V)', 10),
(60, 150.00, 'Jogo de Chaves Combinadas (12 Peças Cromo Vanádio)', 10),
(30, 690.00, 'Serra Circular Manual 7 1/4" (1500W)', 10),
(50, 280.00, 'Trena Digital a Laser (50 Metros)', 10),
(100, 55.00, 'Kit de EPI Básico (Luvas, Óculos, Máscara)', 10),
(80, 110.00, 'Caixa de Ferramentas Plástica Reforçada (3 Gavetas)', 10),
(25, 399.00, 'Nível a Laser Autonivelante (360 Graus)', 10),
(120, 45.00, 'Martelo Unha Forjado (Cabo Emborrachado)', 10),
(15, 299.00, 'Tinta Acrílica Premium Branca (18 Litros)', 10),
(35, 850.00, 'Escada Telescópica de Alumínio (3,8 Metros)', 10);

