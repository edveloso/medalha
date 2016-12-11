require 'rails_helper'

RSpec.describe "participante_atividades/new", type: :view do
  before(:each) do
    assign(:participante_atividade, ParticipanteAtividade.new(
      :atividade => "MyString",
      :participante => "MyString",
      :quantidade => 1
    ))
  end

  it "renders new participante_atividade form" do
    render

    assert_select "form[action=?][method=?]", participante_atividades_path, "post" do

      assert_select "input#participante_atividade_atividade[name=?]", "participante_atividade[atividade]"

      assert_select "input#participante_atividade_participante[name=?]", "participante_atividade[participante]"

      assert_select "input#participante_atividade_quantidade[name=?]", "participante_atividade[quantidade]"
    end
  end
end
