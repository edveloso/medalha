json.extract! usuario, :id, :name, :email, :setor, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)