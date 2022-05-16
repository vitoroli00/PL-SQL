--Integrantes do grupo Data Slayers

--David de Paula Luchetti RM 85573
--Pedro Assumpção Melchior dos Reis RM 84512
--Vitor Oliveira Pires RM 88076

drop table bairro cascade constraints;
drop table cidade cascade constraints;
drop table logradouro cascade constraints;
drop table endereco cascade constraints;
drop table estado cascade constraints;
drop table cliente cascade constraints;
drop table profissao cascade constraints;
drop table civil cascade constraints;
drop table sta_cli cascade constraints;
drop table cli_pro cascade constraints;
drop table sta_cli_pro cascade constraints;
drop table tip_tel cascade constraints;
drop table telefone cascade constraints;
drop table tip_cli cascade constraints;
drop table produto cascade constraints;
drop table sta_pro cascade constraints;

CREATE TABLE bairro (
    cd_bairro  NUMBER(5) NOT NULL,
    nome       VARCHAR2(100) NOT NULL,
    cd_cidade  NUMBER(5) NOT NULL
)
LOGGING;

ALTER TABLE bairro ADD CONSTRAINT bairro_pk PRIMARY KEY ( cd_bairro );

CREATE TABLE cidade (
    cd_cidade  NUMBER(5) NOT NULL,
    nome       VARCHAR2(100) NOT NULL,
    cd_estado  NUMBER(5) NOT NULL
)
LOGGING;

ALTER TABLE cidade ADD CONSTRAINT cidade_pk PRIMARY KEY ( cd_cidade );

CREATE TABLE civil (
    cd_civil   NUMBER(5)
        CONSTRAINT nn_civil_cd_civil NOT NULL,
    descricao  VARCHAR2(15)
        CONSTRAINT nn_civil_descricao NOT NULL
)
LOGGING;

ALTER TABLE civil ADD CONSTRAINT civil_pk PRIMARY KEY ( cd_civil );

CREATE TABLE cli_pro (
    cd_cli          NUMBER(5)
        CONSTRAINT nn_cli_pro_cliente_cd_cli NOT NULL,
    cd_pro          NUMBER(5)
        CONSTRAINT nn_cli_pro_produto_cd_pro NOT NULL,
    agencia         NUMBER(15)
        CONSTRAINT nn_cli_pro_agencia_cd NOT NULL,
    num_conta       NUMBER(15)
        CONSTRAINT nn_cli_pro_num_conta NOT NULL,
    cd_sta_cli_pro  NUMBER(5) 
        CONSTRAINT nn_cli_pro_cd_sta_cli_pro NOT NULL
)
LOGGING;



ALTER TABLE cli_pro ADD CONSTRAINT cli_pro_pk PRIMARY KEY ( cd_pro,
                                                            cd_cli );

CREATE TABLE cliente (
    cd_cli         NUMBER(5) NOT NULL,
    dt_nascimento  DATE NOT NULL,
    cpf            NUMBER(11) NOT NULL,
    CONSTRAINT uk_cliente_cpf UNIQUE(cpf),
    nome           VARCHAR2(100) NOT NULL,
    sexo           CHAR(1) NOT NULL,
    CONSTRAINT ck_cliente_sexo CHECK(sexo IN('F', 'M', 'f', 'm')),
    dt_adesao      DATE NOT NULL,
    cd_tip_cli     NUMBER(5) NOT NULL,
    cd_profissao   NUMBER(5) NOT NULL,
    cd_stat_cli    NUMBER(5) NOT NULL,
    cd_endereco    NUMBER(5) NOT NULL,
    cd_civil       NUMBER(5) NOT NULL)
LOGGING;



CREATE UNIQUE INDEX cliente__idxv1 ON
    cliente (
        cd_endereco
    ASC )
        LOGGING;



ALTER TABLE cliente ADD CONSTRAINT clientes_pk PRIMARY KEY ( cd_cli );

CREATE TABLE endereco (
    cd_endereco    NUMBER(5) NOT NULL,
    numero         NUMBER(10) NOT NULL,
    complemento    VARCHAR2(50),
    cd_logradouro  NUMBER(5) NOT NULL
)
LOGGING;

ALTER TABLE endereco ADD CONSTRAINT endereço_pk PRIMARY KEY ( cd_endereco );

CREATE TABLE estado (
    cd_estado  NUMBER(5) NOT NULL,
    nome       VARCHAR2(100) NOT NULL,
    uf         CHAR(2) NOT NULL
)
LOGGING;

ALTER TABLE estado ADD CONSTRAINT estado_pk PRIMARY KEY ( cd_estado );

CREATE TABLE logradouro (
    cd_logradouro  NUMBER(5) NOT NULL,
    tipo           VARCHAR2(100) NOT NULL,
    nome           VARCHAR2(100) NOT NULL,
    cd_bairro      NUMBER(5) NOT NULL
)
LOGGING;

ALTER TABLE logradouro ADD CONSTRAINT logradouro_pk PRIMARY KEY ( cd_logradouro );

CREATE TABLE produto (
    cd_produto  NUMBER(5)
        CONSTRAINT nn_produto_produto_id NOT NULL,
    descricao   VARCHAR2(50)
        CONSTRAINT nn_produto_descricao NOT NULL,
    cd_sta_pro  NUMBER(5)
        CONSTRAINT nn_produto_sta_pro_sta_pro_id NOT NULL
)
LOGGING;



ALTER TABLE produto ADD CONSTRAINT produto_pk PRIMARY KEY ( cd_produto );

CREATE TABLE profissao (
    cd_profissao  NUMBER(5)
        CONSTRAINT nn_profissao_cd_profissao NOT NULL,
    descricao     VARCHAR2(50)
        CONSTRAINT nn_profissao_descricao NOT NULL
)
LOGGING;

ALTER TABLE profissao ADD CONSTRAINT profissao_pk PRIMARY KEY ( cd_profissao );

CREATE TABLE sta_cli (
    cd_sta_cli  NUMBER(5)
        CONSTRAINT nn_sta_cli_stat_cli_id NOT NULL,
    descricao   VARCHAR2(10)
        CONSTRAINT nn_sta_cli_descricao NOT NULL
)
LOGGING;

ALTER TABLE sta_cli ADD CONSTRAINT sta_cli_pk PRIMARY KEY ( cd_sta_cli );

CREATE TABLE sta_cli_pro (
    cd_sta_cli_pro  NUMBER(5)
        CONSTRAINT nn_sta_cli_pro_cd_sta_cli_pro NOT NULL,
    descricao       VARCHAR2(10)
        CONSTRAINT nn_sta_cli_pro_descricao NOT NULL
)
LOGGING;

ALTER TABLE sta_cli_pro ADD CONSTRAINT sta_cli_pro_pk PRIMARY KEY ( cd_sta_cli_pro );

CREATE TABLE sta_pro (
    cd_sta_pro  NUMBER(5)
        CONSTRAINT nn_sta_pro_sta_pro_id NOT NULL,
    descricao   VARCHAR2(10)
        CONSTRAINT nn_sta_pro_descricao NOT NULL
)
LOGGING;

ALTER TABLE sta_pro ADD CONSTRAINT sta_pro_pk PRIMARY KEY ( cd_sta_pro );

CREATE TABLE telefone (
    cd_telefone     NUMBER(5)
        CONSTRAINT nn_telefone_telefone_id NOT NULL,
    tipo            VARCHAR2(20)
        CONSTRAINT nn_telefone_tipo NOT NULL,
    numero          NUMBER(15)
        CONSTRAINT nn_telefone_numero NOT NULL,
    cliente_cd_cli  NUMBER(5)
        CONSTRAINT nn_telefone_cliente_cd_cli NOT NULL,
    cd_tip_tel      NUMBER(5) 
        CONSTRAINT nn_telefone_tip_tel_cd_tip_tel NOT NULL
)
LOGGING;



ALTER TABLE telefone ADD CONSTRAINT telefone_pk PRIMARY KEY ( cd_telefone );

CREATE TABLE tip_cli (
    cd_tip_cli  NUMBER(5)
        CONSTRAINT nn_tip_cli_tip_cli_id NOT NULL,
    nome        VARCHAR2(50)
        CONSTRAINT nn_tip_cli_nome NOT NULL
)
LOGGING;

ALTER TABLE tip_cli ADD CONSTRAINT tip_cli_pk PRIMARY KEY ( cd_tip_cli );

CREATE TABLE tip_tel (
    cd_tip_tel  NUMBER(5)
        CONSTRAINT nn_tip_tel_cd_tip_tel NOT NULL,
    descricao   VARCHAR2(20)
        CONSTRAINT nn_tip_tel_descricao NOT NULL
)
LOGGING;

ALTER TABLE tip_tel ADD CONSTRAINT tip_tel_pk PRIMARY KEY ( cd_tip_tel );

ALTER TABLE bairro
    ADD CONSTRAINT bairro_cidade_fk FOREIGN KEY ( cd_cidade )
        REFERENCES cidade ( cd_cidade )
    NOT DEFERRABLE;

ALTER TABLE cidade
    ADD CONSTRAINT cidade_estado_fk FOREIGN KEY ( cd_estado )
        REFERENCES estado ( cd_estado )
    NOT DEFERRABLE;

ALTER TABLE cli_pro
    ADD CONSTRAINT cli_pro_cliente_fk FOREIGN KEY ( cd_cli )
        REFERENCES cliente ( cd_cli )
    NOT DEFERRABLE;

ALTER TABLE cli_pro
    ADD CONSTRAINT cli_pro_produto_fk FOREIGN KEY ( cd_pro )
        REFERENCES produto ( cd_produto )
    NOT DEFERRABLE;

ALTER TABLE cli_pro
    ADD CONSTRAINT cli_pro_sta_cli_pro_fk FOREIGN KEY ( cd_sta_cli_pro )
        REFERENCES sta_cli_pro ( cd_sta_cli_pro )
    NOT DEFERRABLE;

ALTER TABLE cliente
    ADD CONSTRAINT cliente_civil_fk FOREIGN KEY ( cd_civil )
        REFERENCES civil ( cd_civil )
    NOT DEFERRABLE;

ALTER TABLE cliente
    ADD CONSTRAINT cliente_endereco_fk FOREIGN KEY ( cd_endereco )
        REFERENCES endereco ( cd_endereco )
    NOT DEFERRABLE;

ALTER TABLE cliente
    ADD CONSTRAINT cliente_profissao_fk FOREIGN KEY ( cd_profissao )
        REFERENCES profissao ( cd_profissao )
    NOT DEFERRABLE;

ALTER TABLE cliente
    ADD CONSTRAINT cliente_stat_cli_fk FOREIGN KEY ( cd_stat_cli )
        REFERENCES sta_cli ( cd_sta_cli )
    NOT DEFERRABLE;

ALTER TABLE cliente
    ADD CONSTRAINT cliente_tipo_cliente_fk FOREIGN KEY ( cd_tip_cli )
        REFERENCES tip_cli ( cd_tip_cli )
    NOT DEFERRABLE;

ALTER TABLE endereco
    ADD CONSTRAINT endereco_logradouro_fk FOREIGN KEY ( cd_logradouro )
        REFERENCES logradouro ( cd_logradouro )
    NOT DEFERRABLE;

ALTER TABLE logradouro
    ADD CONSTRAINT logradouro_bairro_fk FOREIGN KEY ( cd_bairro )
        REFERENCES bairro ( cd_bairro )
    NOT DEFERRABLE;

ALTER TABLE produto
    ADD CONSTRAINT produto_sta_pro_fk FOREIGN KEY ( cd_sta_pro )
        REFERENCES sta_pro ( cd_sta_pro )
    NOT DEFERRABLE;

ALTER TABLE telefone
    ADD CONSTRAINT telefone_cliente_fk FOREIGN KEY ( cliente_cd_cli )
        REFERENCES cliente ( cd_cli )
    NOT DEFERRABLE;

ALTER TABLE telefone
    ADD CONSTRAINT telefone_tip_tel_fk FOREIGN KEY ( cd_tip_tel )
        REFERENCES tip_tel ( cd_tip_tel )
    NOT DEFERRABLE;