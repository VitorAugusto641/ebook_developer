'                                                               SQL SERVER                                                                                        '

                                                / Iniciando com SQL Server /


-------------------------------------------------------------------------------------------------------------------------------------


/ Inserindo dados em tabela pela Query: /

// Sintaxe:

INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);

// Exemplo:

INSERT INTO Grupo_Usuario_Permissao (id_grupo_usuario, id_permissao) VALUES (1, 118);
INSERT INTO Grupo_Usuario_Permissao (usuario, id_permissao) VALUES ('Vitor', 120);
