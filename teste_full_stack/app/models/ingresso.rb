class Ingresso < ApplicationRecord
  has_one :pedido

  validates_presence_of :preco, message: 'Não pode ser deixado em branco'
  validates_presence_of :nome, message: 'Não pode ser deixado em branco'
  validates_presence_of :taxa, message: 'Não pode ser deixado em branco'
  validates_presence_of :data, message: 'Não pode ser deixado em branco'
end
