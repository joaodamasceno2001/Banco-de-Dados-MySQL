describe pessoas;

alter table pessoas
add column cursopreferido int;

alter table pessoas 
add foreign key (cursopreferido)
references cursos(idcurso);