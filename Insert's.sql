use ecommercelilienana;


SELECT * FROM PESSOA;#

SELECT * FROM CATEGORIA;#
SELECT * FROM PRODUTO;#



select*from departamento;
select * from funcionario;#




select * from notafiscal;
select * FrOm ItEm;



#INSERÇÃO DE EMPRESAS






#INSERÇÃO DE PESSOAS
INSERT INTO PESSOA (sexo, Nome, Telefone, Email, CPF, CEP, RUA, CIDADE, NUMERO, Estado, Referencia) VALUES
('M', 'Lucas Rocha', '(11) 98765-4321', 'lucas.rocha@email.com', '000.131.141-15', '01010-001', 'Rua A', 'São Paulo', 101, 'SP', 'Apto 1A'),
('F', 'Juliana Alves', '(11) 97777-1111', 'juliana.alves@email.com', '000.111.222-33', '02020-002', 'Rua B', 'São Paulo', 202, 'SP', 'Casa Fundos'),
('M', 'Marcos Pereira', '(21) 96543-2109', 'marcos.pereira@email.com', '111.111.111-11', '21010-011', 'Av. Central', 'Rio de Janeiro', 111, 'RJ', 'Bloco C'),
('M', 'Bruno Costa', '(21) 95555-3333', 'bruno.costa@email.com', '333.333.333-33', '22020-022', 'Rua da Praia', 'Rio de Janeiro', 333, 'RJ', 'Sala 2B'),
('F', 'Ana Cristina', '(31) 94444-4444', 'ana.cristina@email.com', '444.444.444-44', '30010-033', 'Rua C', 'Belo Horizonte', 444, 'MG', 'Referência Portaria'),
('F', 'Carla Mendes', '(31) 93333-5555', 'carla.mendes@email.com', '555.555.555-55', '31020-044', 'Rua D', 'Belo Horizonte', 555, 'MG', 'Apartamento 5'),
('M', 'Eduardo Lima', '(41) 92222-6666', 'eduardo.lima@email.com', '666.666.666-66', '80010-055', 'Rua E', 'Curitiba', 666, 'PR', 'Próximo ao Parque'),
('F', 'Fernanda Silva', '(41) 91111-7777', 'fernanda.silva@email.com', '777.777.777-77', '81020-066', 'Rua F', 'Curitiba', 777, 'PR', 'Referência Escola'),
('M', 'Gabriel Souza', '(51) 90000-8888', 'gabriel.souza@email.com', '888.888.888-88', '90010-077', 'Av. Principal', 'Porto Alegre', 888, 'RS', 'Casa 1'),
('F', 'Heloísa Neves', '(51) 99876-5432', 'heloisa.neves@email.com', '999.999.999-99', '91020-088', 'Rua G', 'Porto Alegre', 999, 'RS', 'Apto 12B'),
('M', 'Igor Santos', '(61) 97654-3210', 'igor.santos@email.com', '101.101.101-10', '70010-099', 'Rua H', 'Brasília', 101, 'DF', 'Referência Banco'),
('F', 'Laura Gomes', '(61) 96543-2109', 'laura.gomes@email.com', '141.414.141-14', '71020-111', 'Rua I', 'Brasília', 141, 'DF', 'Casa 5'),
('M', 'Mauro Cordeiro', '(71) 95432-1098', 'mauro.cordeiro@email.com', '151.515.151-15', '40010-122', 'Rua J', 'Salvador', 151, 'BA', 'Condomínio X'),
('F', 'Nicole Viana', '(71) 94321-0987', 'nicole.viana@email.com', '161.616.161-61', '41020-133', 'Rua K', 'Salvador', 161, 'BA', 'Apto 3C'),
('M', 'Otávio Martins', '(81) 93210-9876', 'otavio.martins@email.com', '171.171.717-17', '50010-144', 'Rua L', 'Recife', 171, 'PE', 'Próximo à Praça'),
('F', 'Paula Oliveira', '(81) 92109-8765', 'paula.oliveira@email.com', '181.818.181-18', '51020-155', 'Rua M', 'Recife', 181, 'PE', 'Casa 7'),
('M', 'Quirino Dantas', '(92) 91098-7654', 'quirino.dantas@email.com', '191.919.191-19', '69010-166', 'Rua N', 'Manaus', 191, 'AM', 'Referência Rio'),
('F', 'Rebeca Dias', '(92) 90987-6543', 'rebeca.dias@email.com', '000.281.291-30', '69020-177', 'Rua O', 'Manaus', 281, 'AM', 'Bloco B'),
('M', 'Sérgio Melo', '(85) 98765-4321', 'sergio.melo@email.com', '000.101.111-12', '60010-188', 'Rua P', 'Fortaleza', 101, 'CE', 'Apto 10'),
('F', 'Tainá Castro', '(85) 97654-3210', 'taina.castro@email.com', '000.161.171-18', '60020-199', 'Rua Q', 'Fortaleza', 161, 'CE', 'Casa 3'),
('M', 'Uriel Pinheiro', '(91) 96543-2109', 'uriel.pinheiro@email.com', '222.222.222-22', '66010-200', 'Rua R', 'Belém', 222, 'PA', 'Referência Mercado'),
('F', 'Viviane Lima', '(91) 95432-1098', 'viviane.lima@email.com', '000.221.231-24', '66020-211', 'Rua S', 'Belém', 231, 'PA', 'Bloco Z'),
('M', 'Xavier Noronha', '(16) 94321-0987', 'xavier.noronha@email.com', '000.777.888-99', '14010-222', 'Rua T', 'Ribeirão Preto', 777, 'SP', 'Apto 5A'),
('F', 'Yara Medeiros', '(16) 93210-9876', 'yara.medeiros@email.com', '000.191.201-21', '14020-233', 'Rua U', 'Ribeirão Preto', 191, 'SP', 'Casa 2'),
('M', 'Zeca Brito', '(19) 92109-8765', 'zeca.brito@email.com', '000.251.261-27', '13010-244', 'Rua V', 'Campinas', 251, 'SP', 'Referência Padaria'),
('F', 'Alícia Dutra', '(19) 91098-7654', 'alicia.dutra@email.com', '121.121.121-21', '13020-255', 'Rua W', 'Campinas', 121, 'SP', 'Bloco Q'),
('M', 'Bento Ferreira', '(47) 90987-6543', 'bento.ferreira@email.com', '131.313.131-13', '88010-266', 'Rua X', 'Florianópolis', 131, 'SC', 'Casa 9'),
('F', 'Cecília Guedes', '(47) 98765-4321', 'cecilia.guedes@email.com', '000.444.555-66', '88020-277', 'Rua Y', 'Florianópolis', 444, 'SC', 'Apto 8D');



INSERT INTO DEPARTAMENTO (idDpto, nomeDpto) VALUES 
(1, 'Recursos Humanos (RH)'), 
(2, 'Financeiro'), 
(3, 'Logística e Operações'), 
(4, 'Marketing e Vendas'), 
(5, 'Tecnologia e Desenvolvimento (TI)'), 
(6, 'Atendimento ao Cliente (SAC/CX)');


INSERT INTO FUNCIONARIO (CPFfuncionario, idDpto, NumeroConta, AgenciaConta) VALUES
('000.131.141-15', 2, '30000-05', '0500-5'),
('000.111.222-33', 5, '30000-01', '0100-5'),
('111.111.111-11', 1, '55555-55', '0001-0'),
('333.333.333-33', 3, '888888-88', '0201-2'),
('444.444.444-44', 4, '999999-99', '0001-8'),

('555.555.555-55', 2, '12345678-9', '1234'),
('666.666.666-66', 1, '99995678-9', '1999'),
('777.777.777-77', 2,  '2225378-2', '1999'),
('888.888.888-88', 5, '99995678-9', '1999'),
('999.999.999-99', 3, '93988678-0', '1999'),
('101.101.101-10', 4, '92388678-0', '1889'),

('141.414.141-14', 1, '22321678-0', '1829'),
('151.515.151-15', 5, '22321678-0', '1976'),
('161.616.161-61', 4, '22321678-0', '1829'),
('171.171.717-17', 2, '232321678-0', '1829'),
('181.818.181-18', 3, '200021678-0', '1219'),
('191.919.191-19', 3, '22321678-0', '1829'),

('000.281.291-30', 1, '40000-10', '1000-5'),
('000.101.111-12', 4, '30000-04', '0400-5'),
('000.161.171-18', 5, '40000-06', '0600-5'),
('222.222.222-22', 2, '66666-66', '0002-2'),
('000.221.231-24', 4, '40000-08', '0800-5'),

('000.777.888-99', 1, '30000-03', '0300-5'),    
('000.191.201-21', 3, '40000-07', '0700-5'), 
('000.251.261-27', 2, '40000-09', '0900-5'),
('121.121.121-21', 4, '94221678-0', '1999'),
('131.313.131-13', 5, '93321678-0', '1829'),
('000.444.555-66', 3, '30000-02', '0200-5');








INSERT INTO CATEGORIA(nomeCategoria) VALUES 
('Eletrônicos'),
('Eletrodomésticos'),
('Utensílios de Cozinha'),
('Livros e eBooks'),
('Maquiagem'),
('Esportes e Fitness'),
('Móveis e Decoração'),
('Informática e Acessórios'),
('Cuidados Pessoais e Higiene'),
('Ferramentas e Construção');

#geral
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

#geral
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

#geral
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

#geral
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

