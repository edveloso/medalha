require 'rails_helper'

RSpec.describe "participante_atividades/index", type: :view do
  before(:each) do
    assign(:participante_atividades, [
      ParticipanteAtividade.create!(
        :atividade => "Atividade",
        :participante => "Participante",
        :quantidade => 2
      ),
      ParticipanteAtividade.create!(
        :atividade => "Atividade",
        :participante => "Participante",
        :quantidade => 2
      )
    ])
  end

  it "renders a list of participante_atividades" do
    render
    assert_select "tr>td", :text => "Atividade".to_s, :count => 2
    assert_select "tr>td", :text => "Participante".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
