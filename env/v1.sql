CREATE TABLE IF NOT EXISTS adm(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(512) NOT null,
    accesstag INT not null
);
CREATE TABLE IF NOT EXISTS prof(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(512) NOT null
);
CREATE TABLE IF NOT EXISTS clients(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(512) NOT null
);
CREATE TABLE IF NOT EXISTS academia(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    owner_tag INT,
    FOREIGN KEY (owner_tag) REFERENCES adm(id)
);
CREATE TABLE IF NOT EXISTS atividades(
    id SERIAL PRIMARY KEY,
    start_time date,
    end_time date,
    nome VARCHAR(100) NOT NULL,
    about VARCHAR(500) NOT NULL,
    vagas int,
    owner_tag int,
    FOREIGN KEY (owner_tag) REFERENCES academia(id)
);
CREATE TABLE IF NOT EXISTS planos(
    id SERIAL PRIMARY KEY,
    id_academia INT,CREATE TABLE IF NOT EXISTS adm(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(512) NOT null,
    accesstag INT not null
);
CREATE TABLE IF NOT EXISTS prof(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(512) NOT null
);
CREATE TABLE IF NOT EXISTS clients(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(512) NOT null
);
CREATE TABLE IF NOT EXISTS academia(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    owner_tag INT,
    FOREIGN KEY (owner_tag) REFERENCES adm(id)
);
CREATE TABLE IF NOT EXISTS atividades(
    id SERIAL PRIMARY KEY,
    start_time date,
    end_time date,
    nome VARCHAR(100) NOT NULL,
    about VARCHAR(500) NOT NULL,
    vagas int,
    owner_tag int,
    FOREIGN KEY (owner_tag) REFERENCES academia(id)
);
CREATE TABLE IF NOT EXISTS planos(
    id SERIAL PRIMARY KEY,
    id_academia INT,
    nome VARCHAR(100) NOT NULL,
    about VARCHAR(500) NOT NULL,
    valor INT,
    accesstag INT, 
    FOREIGN KEY (id_academia) REFERENCES academia(id)

);
 
create table profissional_academia(
	id_profissional int,
	id_academia int,
	start_time date,
	end_time date,
	FOREIGN KEY (id_profissional) REFERENCES prof(id),
    FOREIGN KEY (id_academia) REFERENCES academia(id)
);
create table atv_prof_academia(
	id_atividade int,
	id_academia int, 
	id_profissional int,
    FOREIGN KEY (id_atividade) REFERENCES atividades(id),
    FOREIGN KEY (id_academia) REFERENCES academia(id),
    FOREIGN KEY (id_profissional) REFERENCES prof(id)
);
create table cliente_atv(
	id_cliente int,
	id_atv int,
    FOREIGN KEY (id_cliente) REFERENCES clients(id),
    FOREIGN KEY (id_atv) REFERENCES atividades(id)
);


SELECT adm.id AS adm_id, adm.nome AS adm_nome, adm.senha AS adm_senha, adm.accesstag AS adm_accesstag FROM adm

commit;

    nome VARCHAR(100) NOT NULL,
    about VARCHAR(500) NOT NULL,
    valor INT,
    accesstag INT, 
    FOREIGN KEY (id_academia) REFERENCES academia(id)

);
 
create table profissional_academia(
	id_profissional int,
	id_academia int,
	start_time date,
	end_time date,
	FOREIGN KEY (id_profissional) REFERENCES prof(id),
    FOREIGN KEY (id_academia) REFERENCES academia(id)
);
create table atv_prof_academia(
	id_atividade int,
	id_academia int, 
	id_profissional int,
    FOREIGN KEY (id_atividade) REFERENCES atividades(id),
    FOREIGN KEY (id_academia) REFERENCES academia(id),
    FOREIGN KEY (id_profissional) REFERENCES prof(id)
);
create table cliente_atv(
	id_cliente int,
	id_atv int,
    FOREIGN KEY (id_cliente) REFERENCES clients(id),
    FOREIGN KEY (id_atv) REFERENCES atividades(id)
);
