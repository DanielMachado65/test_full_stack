class Comprador < ApplicationRecord
  has_one :pedido
  validates :nome, presence: true, length: { maximum: 50 }

  validates_presence_of :telefone, message: 'Não pode ser deixado em branco'
  validates_presence_of :email, message: 'Não pode ser deixado em branco'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
