require "rails_helper"

RSpec.describe ParticipanteAtividadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/participante_atividades").to route_to("participante_atividades#index")
    end

    it "routes to #new" do
      expect(:get => "/participante_atividades/new").to route_to("participante_atividades#new")
    end

    it "routes to #show" do
      expect(:get => "/participante_atividades/1").to route_to("participante_atividades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/participante_atividades/1/edit").to route_to("participante_atividades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/participante_atividades").to route_to("participante_atividades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/participante_atividades/1").to route_to("participante_atividades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/participante_atividades/1").to route_to("participante_atividades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/participante_atividades/1").to route_to("participante_atividades#destroy", :id => "1")
    end

  end
end
