create or replace function cria_curso(nome_curso varchar, nome_categoria varchar) returns void as $$
	declare
		id_categoria integer;
	begin
		select id into id_categoria 
		from academico.categoria 
		where nome = nome_categoria;
		
		-- Se a categoria não existe, cria uma nova categoria com o valor do parâmetro informado
		if not found then
			insert into categoria (nome) 
			values (nome_categoria) 
			returning id into id_categoria;
		end if;
		
		insert into academico.curso (nome, categoria_id)
		values (
			nome_curso,
			id_categoria
		);
	end;
$$ language plpgsql;

select cria_curso('React Native', 'Programação');
select * from academico.curso;
select * from academico.categoria;