class Ingresso < ApplicationRecord
  def self.search(search)
    where("nome = ?", "#{search}")
  end
end
