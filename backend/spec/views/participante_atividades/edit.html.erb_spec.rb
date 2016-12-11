require 'rails_helper'

RSpec.describe "participante_atividades/edit", type: :view do
  before(:each) do
    @participante_atividade = assign(:participante_atividade, ParticipanteAtividade.create!(
      :atividade => "MyString",
      :participante => "MyString",
      :quantidade => 1
    ))
  end

  it "renders the edit participante_atividade form" do
    render

    assert_select "form[action=?][method=?]", participante_atividade_path(@participante_atividade), "post" do

      assert_select "input#participante_atividade_atividade[name=?]", "participante_atividade[atividade]"

      assert_select "input#participante_atividade_participante[name=?]", "participante_atividade[participante]"

      assert_select "input#participante_atividade_quantidade[name=?]", "participante_atividade[quantidade]"
    end
  end
end
