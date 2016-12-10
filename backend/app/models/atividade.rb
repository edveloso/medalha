class Atividade < ApplicationRecord
  has_many :atividade_usuarios
  has_many :usuarios, through: :atividade_usuarios
end
