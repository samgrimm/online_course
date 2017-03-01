instructor = Instructor.create(
  email: "samantha.grimm@gmail.com",
  password: "foobar",
  password_confirmation: "foobar",
  roles: 'instructor'
)
puts "Created one instructor"

student = Student.create(
  email: "arthur.cabral@gmail.com",
  password: "foobar",
  password_confirmation: "foobar",
  roles: "student"
)

puts "Created one student"
curso = instructor.cursos.build(
  titulo: "História da Arte",
  ementa: "Discussão sobre história da arte"
)
curso.save

curso = instructor.cursos.build(
  titulo: "História da Psicologia Moderna",
  ementa: "Discussão sobre história da Psicologia Moderna"
)
curso.save
curso = instructor.cursos.build(
  titulo: "História da Ciência",
  ementa: "Discussão sobre história da ciência"
)
curso.save

cursos = Curso.all
cursos.each do |curso|
  10.times do |secco|
    curso.seccos.create(
      titulo: "#{curso.titulo} - seção #{secco}",
      resumo: "Aqui vai um resumo sobre o que esta seção vai cobrir, pode ser um parágrafo ou mais.
      Cada secao será dividida em aulas, e a secao pode ter uma quantidade infinita de aulas.
      Podemos tambem discutir de vamos color testes e em que ponto colocar o teste: depois de cada aula,
      depois de cada secao.
      Tambem podemos discutir se vamos deixar alunx verem o conteudo da secao seguinte sem terem visto o conteudo
      da secao anterior."
      )
  end
end

seccos = Secco.all
seccos.each do |secco|
  10.times do |aula|
    secco.aulas.create(
      titulo: "#{secco.curso.titulo} - seção #{secco.titulo} - aula #{aula}",
      conteudo: "Aqui vai o conteudo da aula. Tudo, tudinho que vai ser abordado. A gente pode discutir se aqui vai um textão ou um vídeo.
      Eu tenho feito vários cursos online onde o instrutor usa um vídeo, que pode ser um powerpoint com voz por cima, ou as vezes é um vídeo
      da pessoa falando, num fundo branco. Eu vou dar uma pesquisada sobre como colocar os vídeos, mas acho que eles devem ser de no max 20 min.",
      referencias: "Links para artigos, livros, blogs, videos, enfim. Qualquer outro material que alunx possam achar interessante para aprender mais."
      )
  end
end
