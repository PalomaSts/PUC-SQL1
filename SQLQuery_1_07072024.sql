--Questão 1

CREATE TABLE mae
(
    id_mae INT,
    nome_mae VARCHAR(100) NOT NULL,
    endereco_logradouro VARCHAR(100),
    endereco_numero VARCHAR(10),
    endereco_complemento VARCHAR(20),
    endereco_cep VARCHAR(10),
    numero_contato VARCHAR(20),
    data_nascimento DATE NOT NULL
    CONSTRAINT PK_mae PRIMARY KEY(id_mae)
)

CREATE TABLE medico
(
    id_medico INT,
    nome_medico VARCHAR(100) NOT NULL,
    crm VARCHAR(10) NOT NULL,
    numero_contato VARCHAR(20) NOT NULL
    CONSTRAINT PK_medico PRIMARY KEY(id_medico)
)

CREATE TABLE bebe
(
    id_bebe INT,
    id_medico INT NOT NULL,
    id_mae INT NOT NULL,
    nome_bebe VARCHAR(100),
    altura_cm INT,
    peso_gr INT,
    data_nascimento DATE NOT NULL
    CONSTRAINT PK_bebe PRIMARY KEY(id_bebe),
    CONSTRAINT FK_medico FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
    CONSTRAINT FK_mae FOREIGN KEY (id_mae) REFERENCES mae(id_mae)
)

CREATE TABLE especialidade
(
    id_especialidade INT,
    nome_especialidade VARCHAR(100) NOT NULL
    CONSTRAINT PK_especialidade PRIMARY KEY(id_especialidade)
)

CREATE TABLE especialista
(
    id_medico INT,
    id_especialidade INT,
    data_cadastro_especialidade DATE NOT NULL,
    CONSTRAINT PK_especialista PRIMARY KEY(id_medico, id_especialidade),
    CONSTRAINT FK_especialista_medico FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
    CONSTRAINT FK_especialidade FOREIGN KEY (id_especialidade) REFERENCES especialidade(id_especialidade)
)

--Questão 2

INSERT INTO medico
VALUES
(1,'Dr. Otávio Ferreira','MG-89650','(31)99544-3232')
,(2,'Dra. Milena Teixeira','MG-97304','(31)98878-4566')
,(3,'Dra. Nicole Cardoso','MG-82650','(31)98844-6000')
,(4,'Dr. Davi Ribeiro','MG-59870','(31)99411-9636')
,(5,'Dra. Brenda Carvalho','MG-77654','(31)98770-5980')
,(6,'Dr. Raul Cunha','MG-92840','(31)99303-0366');

INSERT INTO mae
VALUES
(1,'Maria Isabel de Souza','Rua Mantiqueia','10',NULL,'32.475-190',
'(32)99856-5712','1988-01-05')
,(2,'Juliana Freitas','Avenida Meriodional','1560','Apt 101','31.560-300',
'(31)98825-4620','2001-06-14')
,(3,'Esther Souza','Alameda Gonçalves Dias','235B','Fundos','31.220-010',
'(31)99974-1010','1985-12-22')
,(4,'Laura Cardoso','Rua Alta','760',NULL,'34.800-000',
'(34)98133-3388','2002-10-07')
,(5,'Mariana Gonçalves','Travessa Sarandí','S/N',NULL,'32.450-000',
'(32)99632-3296','2005-04-20')
,(6,'Milena Cunha','Avenida Pirapora','2100','Bloco B Apt 301',
'31.980-605','(31)98778-4000','1989-07-26')
,(7,'Stella Costa','Rua Vilarinho','810','Apt 203','33.100-500',
'(33)98556-1010','2002-05-25')
,(8,'Giovanna Caldeira','Rua Dr. Renê Magalhães','290',NULL,'34.710-200',
'(34)99211-4554','1987-08-01')
,(9,'Sabrina Silva','Rua Engenheiro Hélio Ramos','378','Apt 404','31.980-600',
'(31)95564-3440','2005-02-04')
,(10,'Yasmin da Costa','Rua Seis','25',NULL,'33.285-520',
'(33)98799-7880','1989-11-11')
,(12,'Carolina Aragão',NULL,NULL,NULL,NULL,NULL,'1995-05-25')
,(13,'Valentina Nogueira',NULL,NULL,NULL,'31.550-600',
'(31)99991-4664','1998-03-03');

INSERT INTO bebe
VALUES
(1,4,3,'Olívia Souza',50,3500,'2017-01-02')
,(2,1,1,'Isabel de Souza',52,3120,'2018-02-15')
,(3,4,2,'Nicolas Freitas',49,2980,'2019-04-22')
,(4,3,8,'Letícia Caldeira',48,2905,'2020-02-01')
,(5,5,3,'João Souza',55,3890,'2021-03-30')
,(6,4,4,'Isabella Cardoso',51,3470,'2022-07-03')
,(7,5,6,'Davi Cunha',52,36150,'2022-08-20')
,(8,5,10,'Samuel da Costa',50,3745,'2022-08-22')
,(9,4,9,'Diego Silva',49,3125,'2022-10-01')
,(10,5,8,'Amanda Caldeira',45,2790,'2023-01-02')
,(12,1,3,'Lucas Souza',51,3480,'2023-01-03')
,(13,4,2,'Gabriel Freitas',52,3860,'2023-01-04')
,(14,3,7,'Fábio Costa',49,3125,'2023-01-05')
,(15,4,1,'Maria de Souza',48,3060,'2023-01-06');

INSERT INTO especialidade
VALUES
(1,'Pediatria')
,(2,'Obstetrícia')
,(3,'Ginecologia');

INSERT INTO especialista
VALUES
(1,1,'2012-01-02')
,(1,2,'2012-01-02')
,(2,1,'2013-01-02')
,(3,1,'2014-01-02')
,(3,2,'2014-01-02')
,(4,2,'2015-01-02')
,(5,1,'2016-01-02')
,(6,1,'2017-01-02');

--Questão 3

--a) Insira mais cinco mães com atributos escolhidos a seu critério.
INSERT INTO mae
VALUES
(14,'Helena Maria da Silva','Rua José Nonato','S/N',NULL,'08.135-635',
'(11)94772-6598','1986-02-25')
,(15,'Josenilda Santana','Avenida José Rodrigues','155',NULL,'29.256-770',
'(12)99923-5681','1987-09-03')
,(16,'Cristally Medeiros','Travessa Ronaldo Godoy','2A','Fundos','11.202-898',
'(31)97852-2244','1995-07-08')
,(17,'Angelica Souza','Rua Espirito Santo','78','Apt 13','09.180-223',
'(34)97813-9985','2001-08-29')
,(18,'Luiza Rossi Almeida','Avenida Antonio Martins','S/N',NULL,'24.650-020',
'(32)96982-9966','2003-07-13');

--b) Registre o nascimento de um bebê para duas dessas mães atribuindo o parto ao Dr. Davi Ribeiro com data de 10/01/2023.
INSERT INTO bebe (id_bebe, id_medico, id_mae, nome_bebe, altura_cm, peso_gr, data_nascimento)
VALUES
(16, 4, 14, 'Luiza Silva', 50, 2989, '2023-01-10'),
(17, 4, 15, 'Victor Santana', 51, 3264, '2023-01-10')

--c) Insira a especialidade “Neonatologia” e faça com que a Dra. Brenda Carvalho seja considerada especialista nessa área.
INSERT INTO especialidade (id_especialidade, nome_especialidade)
VALUES (4, 'Neonatologia');

INSERT INTO especialista (id_medico, id_especialidade, data_cadastro_especialidade)
VALUES (5, 4, '2016-01-02');

--d) Remova a especialidade “Ginecologia”.
DELETE FROM especialidade
WHERE id_especialidade = 3;

--e) O bebê Davi Cunha teve seu peso ao nascimento registrado como 36.150
--gramas. O que, obviamente, trata-se de um erro. Atualize esse dado
--corrigindo para 3.615.
UPDATE bebe
SET peso_gr = 3615
WHERE id_bebe = 7;

--Questão 4

--a) Todo o conteúdo do cadastro de médicos ordenado pelo CRM de forma decrescente.
SELECT * from medico order by crm desc;

--b) O peso mínimo, médio e máximo de todos os bebês registrados.
SELECT MAX(bebe.peso_gr) as MAXIMO, AVG(bebe.peso_gr) AS MEDIO, MIN(bebe.peso_gr) AS MINIMO FROM bebe;

--c) A quantidade de bebês nascidos entre 01/01/2021 e 31/12/2022.
SELECT * FROM bebe where (data_nascimento between '2021-01-01' AND '2022-01-31');

--d) O nome de todas a mães que não tem o logradouro cadastrado.
SELECT nome_mae from mae where endereco_logradouro is null;

--e) O nome das mães que não tem o logradouro e o CEP cadastrados.
SELECT nome_mae from mae where endereco_logradouro is null and endereco_cep is null;

--f) O nome dos bebês que tem altura abaixo de 48 cm ou acima de 52 cm.
select nome_bebe from bebe where altura_cm < 48 or altura_cm > 52;

--g) O identificador (id) de todos os bebês que tenham “Souza” no nome.
select id_bebe from bebe where nome_bebe like ("%Souza%");

--h) O identificador (id) da mãe exibido de forma ordenada e com a respectiva quantidade de filhos cadastrados na base.
select m.id_mae, count(distinct b.id_bebe) as qt_filhos from mae m inner join bebe b on m.id_mae = b.id_mae group by m.id_mae order by m.id_mae asc;

--i) Repetir a listagem anterior, mas exibindo apenas os identificadores (id) de mães que tenham mais de 1 filho.
select m.id_mae, count(distinct b.id_bebe) as qt_filhos from mae m inner join bebe b on m.id_mae = b.id_mae group by m.id_mae having count(distinct b.id_bebe)>1 order by m.id_mae asc;

--j) O identificador (id) do médico com a respectiva quantidade de partos realizados sendo exibido dos que mais aturam para os que menos atuaram.
select d.id_medico, count(distinct b.id_bebe) as qt_partos from medico d inner join bebe b on d.id_medico = b.id_medico group by d.id_medico order by count(distinct b.id_bebe) desc;

--k) O nome somente das mães que tenham filhos já cadastrados.
select distinct m.nome_mae from mae m inner join bebe b on m.id_mae = b.id_mae;

--l) O nome de todas as mães incluindo, quando existir, o nome de cada um de seus filhos.
select m.nome_mae, STRING_AGG(b.nome_bebe, ',') from mae m left outer join bebe b on m.id_mae = b.id_mae group by m.nome_mae order by m.nome_mae asc;

--m) A lista contendo o nome ordenado de todos os bebês com os respectivos nomes de médicos responsáveis.
select b.nome_bebe, d.nome_medico from bebe b inner join medico d on b.id_medico = d.id_medico order by b.nome_bebe asc;

--n) O nome do médico e a descrição de suas especialidades, mas somente para aquelas cadastradas a partir de 01/01/2013.
select d.nome_medico, f.nome_especialidade from especialista e inner join medico d on d.id_medico = e.id_medico inner join especialidade f on e.id_especialidade = f.id_especialidade where e.data_cadastro_especialidade >= '2013-01-01';

--o) Listagem contendo o nome, CRM e especialidade de cada um dos médicos cadastrados
select d.nome_medico, d.crm, STRING_AGG(f.nome_especialidade, ',') especialidades from especialista e inner join medico d on d.id_medico = e.id_medico inner join especialidade f on e.id_especialidade = f.id_especialidade GROUP BY d.nome_medico, d.crm;

