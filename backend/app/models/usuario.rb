class Usuario < ApplicationRecord
  has_many :atividade_usuarios
  has_many :atividades, through: :atividade_usuarios
end
