require 'rails_helper'

RSpec.describe "participante_atividades/show", type: :view do
  before(:each) do
    @participante_atividade = assign(:participante_atividade, ParticipanteAtividade.create!(
      :atividade => "Atividade",
      :participante => "Participante",
      :quantidade => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Atividade/)
    expect(rendered).to match(/Participante/)
    expect(rendered).to match(/2/)
  end
end
