# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Atividade.create(nome:"Lavar louca", descricao:"lava a louca")
Atividade.create(nome:"Enxugar louca", descricao:"enxugar a louca")
Atividade.create(nome:"Fazer cafe", descricao:"fazer cafe")
Usuario.create(name: 'Luiz', email: 'l2016@curso.com', setor: 'Ti')
Usuario.create(name: 'Miguel', email: 'm2016@curso.com', setor: 'Aux')
Usuario.create(name: 'Joao', email: 'j2016@curso.com', setor: 'Adm')
Usuario.create(name: 'Veloso', email: 'v2016@curso.com', setor: 'Ti')
Usuario.create(name: 'Thialles', email: 't2016@curso.com', setor: 'Jud')
