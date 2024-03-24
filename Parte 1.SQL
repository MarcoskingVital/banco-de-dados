CREATE database LOJAS_E_commerce;

use LOJAS_E_commerce;

CREATE table clientes(
    id int auto_increment primary key,
    nome varchar(100),
    endereco varchar(150),
    email varchar (100),
    celular bigint,
    data_de_nascimento date 
);

CREATE table produtos (
	id int auto_increment primary key,
    nome varchar (100),
    preco decimal(10,2),
    descricao varchar(500),
    quantidade_de_estoques int
);

CREATE table pedidos (
	id int auto_increment primary key,
    cliente_id int,
    data_de_compra date,
    valor_total decimal(10,2),
    data_de_entrega date,
    foreign key (cliente_id) references clientes (id)
);

CREATE table pedido_lista_de_itens (
     id int auto_increment primary key,
     pedido_id int,
     produto_id int,
     quant int,
     valor_unitario decimal (10,2),
     valor_total decimal (10,2),
     foreign key (pedido_id) references pedidos(id),
      foreign key (produto_id) references produtos(id)
);