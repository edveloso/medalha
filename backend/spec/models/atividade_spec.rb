require 'rails_helper'

RSpec.describe Atividade, type: :model do
  it "Deve criar uma nova atividade" do
    atividade = Atividade.create(nome:"Lavar louca", descricao:"lava a louca")
    expect(atividade.id).not_to be_nil
  end


end
