# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

atividade1 = Atividade.create(nome:"Lavar louca", descricao:"lava a louca")
atividade2 = Atividade.create(nome:"Enxugar louca", descricao:"enxugar a louca")
atividade3 = Atividade.create(nome:"Fazer cafe", descricao:"fazer cafe")
usuario1 = Usuario.create(name: 'Luiz', email: 'l2016@curso.com', setor: 'Ti')
usuario2 = Usuario.create(name: 'Miguel', email: 'm2016@curso.com', setor: 'Aux')
usuario3 = Usuario.create(name: 'Joao', email: 'j2016@curso.com', setor: 'Adm')
Usuario.create(name: 'Veloso', email: 'v2016@curso.com', setor: 'Ti')
Usuario.create(name: 'Thialles', email: 't2016@curso.com', setor: 'Jud')

AtividadeUsuario.create(usuario: usuario1 , atividade: atividade1)
AtividadeUsuario.create(usuario: usuario2 , atividade: atividade2)
AtividadeUsuario.create(usuario: usuario3 , atividade: atividade3)
