/*projeto atualizado 21:41*/

select *from aplicacao;
select *from cliente;
select *from consultorinvestimento;
select *from fundoinvestimento;
select *from tipofundo;
describe aplicacao;

insert into aplicacao
(codClienteFK, numFundoFK, numConsultorFK, valorAplicacao) 
values (3,2,1,15800),(3,2,2,1800),(4,2,1,105000);

insert into cliente
(nomeCliente, dtNascimento, cpf) values 
("Larissa Cruzeiro","1999-01-01","38557844785"),
("Marta Mariana","2000-12-05","38757844781");



insert into consultorinvestimento
(nomeConsultor, percentualComissao)
values ("João Felix",15.7), ("Joana Maria", 16);


insert into fundoinvestimento 
(nomeComlFundo, codTipoFundoFK, ativo)
values ("CDB 2023", 2,"N"),("AÇÕES 2023", 1,"A");




select *from aplicacao a
join cliente c on c.codCliente = a.codClienteFK
join consultorinvestimento ci on ci.numConsultor = a.numConsultorFK
join fundoinvestimento f on f.numFundo = a.numFundoFK
join tipofundo t on t.codTipoFundo = f.codTipoFundoFK;








