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

insert into produtos (nome, preco, descricao, quantidade_de_estoques)
values ("Jamal Murray",14.24,"um livro sobre geografia",50);
select * from produtos;

insert into clientes (nome, endereco, email, celular, data_de_nascimento)
values("Marcos", "Rua afonso pereira", "marcosvital405@gmail.com", 11938538274, '2005-06-03');
select * from clientes;

insert into pedidos (cliente_id, data_de_compra, valor_total, data_de_entrega)
values (10,'2024-03-17',13.90, '2024-04-13');
select * from pedidos;

insert into pedido_lista_de_itens (pedido_id, produto_id, quant, valor_unitario, valor_total)
values (1, 1, 3, 29.99, 89.97);
select * from pedido_lista_de_itens;

update clientes
set endereco = 'rua gilseppe recco, 789'
where id = 1;

update produtos
set quantidade_de_estoques = quantidade_de_estoques + 7
where id = 3;

update pedidos
set data_de_entrega = '2022-06-15'
where id = 5;

update pedido_lista_de_itens
set quant = 5,
     valor_total = 5 * valor_unitario
where id = 8;

delete from clientes
where email = 2;

delete from produtos
where preco = 3;

drop table produtos;
drop table clientes

