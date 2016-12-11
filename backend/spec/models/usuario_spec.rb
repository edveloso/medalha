require 'rails_helper'

RSpec.describe Usuario, type: :model do
  it "Testando se usuarios sao criados com os dados corretos" do
    usuario = Usuario.new(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    expect(usuario.name).to eq "Fernando"
    expect(usuario.email).to eq "lfernando.bosso@gmail.com"
    expect(usuario.setor).to eq "Ti"
  end

  it "Testando se usuarios sao criados na base de dados com os dados corretos correto" do
    usuario = Usuario.new(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    usuario.save
    usuarioTeste = Usuario.find(usuario.id)
    expect(usuarioTeste.name).to eq "Fernando"
    expect(usuarioTeste.email).to eq "lfernando.bosso@gmail.com"
    expect(usuarioTeste.setor).to eq "Ti"
  end

  it "Pesquisa for nome" do
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    usuarioTeste = Usuario.where(name: "Fernando").first
    expect(usuarioTeste.name).to eq "Fernando"
  end

  it "Pesquisa for email" do
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    usuarioTeste = Usuario.where(email: "lfernando.bosso@gmail.com").first
    expect(usuarioTeste.email).to eq "lfernando.bosso@gmail.com"
  end

  it "Pesquisa for setor" do
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Aux")
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    usuariosSetor = Usuario.where(setor: "Ti")
    expect(usuariosSetor.count).to eq 2
  end

  it "Retorna quantidade de tarefas" do
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Aux")
    Usuario.create(name: "Fernando", email: "lfernando.bosso@gmail.com", setor: "Ti")
    usuariosSetor = Usuario.where(setor: "Ti")
    expect(usuariosSetor.count).to eq 2
  end

end
