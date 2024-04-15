USE BIBLIOTECA;

ALTER TABLE Livro ADD CONSTRAINT fk_biblioteca_livro FOREIGN KEY(id_biblioteca) REFERENCES Biblioteca(id_biblioteca);

ALTER TABLE Lingua ADD CONSTRAINT fk_livro_lingua FOREIGN KEY(id_livro) REFERENCES Livro(id_livro);

ALTER TABLE LivroGenero ADD CONSTRAINT fk_genero_livrogenero FOREIGN KEY(id_genero) REFERENCES Genero(id_genero);

ALTER TABLE LivroGenero ADD CONSTRAINT fk_livro_livrogenero FOREIGN KEY(id_livro) REFERENCES Livro(id_livro);

ALTER TABLE Edicao ADD CONSTRAINT fk_editora_edicao FOREIGN KEY(id_editora) REFERENCES Editora(id_editora);

ALTER TABLE EdicaoImagemIlustrativa ADD CONSTRAINT fk_edicao_EdicaoImagemIlustrativa FOREIGN KEY(id_edicao) REFERENCES Edicao(id_edicao);

ALTER TABLE EdicaoImagemIlustrativa ADD CONSTRAINT fk_imagemilustrativa_EdicaoImagemIlustrativa FOREIGN KEY(id_ii) REFERENCES ImagemIlustrativa(id_ii);

ALTER TABLE LivroAutor ADD CONSTRAINT fk_livro_livroautor FOREIGN KEY(id_livro) REFERENCES Livro(id_livro);

ALTER TABLE LivroAutor ADD CONSTRAINT fk_autor_livroautor FOREIGN KEY(id_autor) REFERENCES Autor(id_autor);

ALTER TABLE LivroLocado ADD CONSTRAINT fk_locacao_livrolocado FOREIGN KEY(id_locacao) REFERENCES Locacao(id_locacao);

ALTER TABLE Locacao ADD CONSTRAINT fk_cliente_locacao FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente);

ALTER TABLE Cliente ADD CONSTRAINT fk_biblioteca_cliente FOREIGN KEY(id_biblioteca) REFERENCES Biblioteca(id_biblioteca);

ALTER TABLE Multa ADD CONSTRAINT fk_livrolocado_multa FOREIGN KEY(id_livro_locado) REFERENCES LivroLocado(id_livro_locado);