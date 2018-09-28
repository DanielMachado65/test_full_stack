class Pedido < ApplicationRecord
  belongs_to :comprador
  belongs_to :ingresso
end
