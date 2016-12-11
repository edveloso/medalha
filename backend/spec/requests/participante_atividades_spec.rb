require 'rails_helper'

RSpec.describe "ParticipanteAtividades", type: :request do
  describe "GET /participante_atividades" do
    it "works! (now write some real specs)" do
      get participante_atividades_path
      expect(response).to have_http_status(200)
    end
  end
end
