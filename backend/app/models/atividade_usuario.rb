class AtividadeUsuario < ApplicationRecord
  belongs_to :atividade
  belongs_to :usuario
end
