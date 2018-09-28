json.extract! pedido, :id, :comprador_id, :ingresso_id, :pago, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
