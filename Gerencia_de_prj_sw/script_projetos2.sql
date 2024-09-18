
CREATE TABLE projetos2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_programa VARCHAR(255) NOT NULL,
    nome_projeto VARCHAR(255) NOT NULL,
    valor_projeto DECIMAL(15, 2) NOT NULL,
    nome_responsavel VARCHAR(255) NOT NULL,
    stakeholder VARCHAR(255),
    data_inicio DATE NOT NULL,
    data_fim DATE,
    situacao ENUM('Planejado', 'Em andamento', 'Concluído', 'Cancelado') NOT NULL,
    nivel_importancia ENUM('Baixo', 'Médio', 'Alto') NOT NULL,
    categoria VARCHAR(255)
);


INSERT INTO projetos2 (nome_programa, nome_projeto, valor_projeto, nome_responsavel, stakeholder, data_inicio, data_fim, situacao, nivel_importancia, categoria)
VALUES 
('Programa Alpha', 'Projeto Apollo', 50000.00, 'Carlos Silva', 'Empresa X', '2023-01-15', '2023-05-30', 'Concluído', 'Alto', 'Tecnologia'),
('Programa Beta', 'Projeto Orion', 75000.50, 'Maria Santos', 'Governo Y', '2023-02-20', '2023-08-15', 'Em andamento', 'Médio', 'Infraestrutura'),
('Programa Gamma', 'Projeto Athena', 120000.00, 'João Lima', 'Empresa Z', '2023-03-05', NULL, 'Em andamento', 'Alto', 'Saúde'),
('Programa Delta', 'Projeto Hermes', 35000.00, 'Ana Costa', 'ONG ABC', '2023-04-01', '2023-07-30', 'Concluído', 'Baixo', 'Educação'),
('Programa Epsilon', 'Projeto Zeus', 100000.00, 'Pedro Pereira', 'Empresa X', '2023-05-10', NULL, 'Planejado', 'Alto', 'Tecnologia'),
('Programa Zeta', 'Projeto Artemis', 200000.00, 'Luana Ferreira', 'Governo Y', '2023-06-15', NULL, 'Em andamento', 'Alto', 'Infraestrutura'),
('Programa Eta', 'Projeto Atlas', 45000.00, 'Bruno Dias', 'Empresa Z', '2023-07-01', '2023-12-15', 'Planejado', 'Médio', 'Meio Ambiente'),
('Programa Theta', 'Projeto Helios', 60000.00, 'Fernanda Oliveira', 'ONG ABC', '2023-08-10', NULL, 'Em andamento', 'Baixo', 'Educação'),
('Programa Iota', 'Projeto Perseu', 50000.00, 'Rafael Souza', 'Empresa X', '2023-09-01', NULL, 'Planejado', 'Médio', 'Tecnologia'),
('Programa Kappa', 'Projeto Pegasus', 90000.00, 'Patrícia Gomes', 'Governo Y', '2023-09-20', NULL, 'Em andamento', 'Alto', 'Infraestrutura'),
('Programa Lambda', 'Projeto Medusa', 80000.00, 'Ricardo Andrade', 'Empresa Z', '2023-10-01', NULL, 'Planejado', 'Médio', 'Saúde'),
('Programa Mu', 'Projeto Fênix', 30000.00, 'Carla Mota', 'ONG ABC', '2023-11-10', NULL, 'Planejado', 'Baixo', 'Educação'),
('Programa Nu', 'Projeto Quimera', 150000.00, 'Gustavo Lima', 'Empresa X', '2024-01-01', NULL, 'Planejado', 'Alto', 'Tecnologia'),
('Programa Xi', 'Projeto Hércules', 125000.00, 'Sandra Cardoso', 'Governo Y', '2024-02-15', NULL, 'Em andamento', 'Médio', 'Infraestrutura'),
('Programa Omicron', 'Projeto Ícaro', 110000.00, 'Eduardo Matos', 'Empresa Z', '2024-03-01', NULL, 'Planejado', 'Alto', 'Saúde'),
('Programa Pi', 'Projeto Minerva', 80000.00, 'Renata Castro', 'ONG ABC', '2024-04-20', NULL, 'Em andamento', 'Médio', 'Educação'),
('Programa Rho', 'Projeto Poseidon', 250000.00, 'Lucas Almeida', 'Empresa X', '2024-05-15', NULL, 'Planejado', 'Alto', 'Tecnologia'),
('Programa Sigma', 'Projeto Cronos', 50000.00, 'Mariana Borges', 'Governo Y', '2024-06-01', NULL, 'Em andamento', 'Baixo', 'Infraestrutura'),
('Programa Tau', 'Projeto Tritão', 30000.00, 'Thiago Nunes', 'Empresa Z', '2024-07-10', NULL, 'Planejado', 'Médio', 'Saúde'),
('Programa Upsilon', 'Projeto Pan', 20000.00, 'Paula Viana', 'ONG ABC', '2024-08-15', NULL, 'Planejado', 'Baixo', 'Educação'),
('Programa Phi', 'Projeto Dédalo', 95000.00, 'Marcelo Martins', 'Empresa X', '2024-09-01', NULL, 'Em andamento', 'Alto', 'Tecnologia'),
('Programa Chi', 'Projeto Centauro', 50000.00, 'Gabriela Souza', 'Governo Y', '2024-09-20', NULL, 'Planejado', 'Médio', 'Infraestrutura'),
('Programa Psi', 'Projeto Sereia', 40000.00, 'Igor Araújo', 'Empresa Z', '2024-10-01', NULL, 'Em andamento', 'Baixo', 'Saúde'),
('Programa Omega', 'Projeto Eolo', 15000.00, 'Julia Rodrigues', 'ONG ABC', '2024-10-20', NULL, 'Planejado', 'Baixo', 'Educação'),
('Programa Alpha', 'Projeto Hipnos', 70000.00, 'Bruno Ribeiro', 'Empresa X', '2024-11-10', NULL, 'Em andamento', 'Médio', 'Tecnologia'),
('Programa Beta', 'Projeto Hefesto', 120000.00, 'Alessandra Farias', 'Governo Y', '2024-12-01', NULL, 'Planejado', 'Alto', 'Infraestrutura'),
('Programa Gamma', 'Projeto Apolo', 90000.00, 'Leonardo Teixeira', 'Empresa Z', '2025-01-01', NULL, 'Planejado', 'Médio', 'Saúde'),
('Programa Delta', 'Projeto Afrodite', 45000.00, 'Marisa Lima', 'ONG ABC', '2025-02-15', NULL, 'Em andamento', 'Baixo', 'Educação'),
('Programa Epsilon', 'Projeto Dionísio', 130000.00, 'Roberto Almeida', 'Empresa X', '2025-03-01', NULL, 'Planejado', 'Alto', 'Tecnologia'),
('Programa Zeta', 'Projeto Hera', 105000.00, 'Luciana Vieira', 'Governo Y', '2025-04-10', NULL, 'Planejado', 'Médio', 'Infraestrutura');
