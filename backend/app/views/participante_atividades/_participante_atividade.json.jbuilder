json.extract! participante_atividade, :id, :atividade, :participante, :quantidade, :created_at, :updated_at
json.url participante_atividade_url(participante_atividade, format: :json)