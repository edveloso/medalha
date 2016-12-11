require 'rails_helper'

RSpec.describe Atividade, type: :model do
	it "Atribuir usuario a uma atividade" do
		usuario = Usuario.create(name: "Fernando", email: "Fernando", setor: "It")
		atividade = Atividade.create(nome:"Lavar louca", descricao:"lava a louca")
		AtividadeUsuario.create(usuario: usuario , atividade: atividade)
		expect(atividade.usuarios.count).to eq 1
	end
end
