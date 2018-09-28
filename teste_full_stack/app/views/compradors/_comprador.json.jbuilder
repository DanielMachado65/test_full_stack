json.extract! comprador, :id, :nome, :email, :telefone, :created_at, :updated_at
json.url comprador_url(comprador, format: :json)
