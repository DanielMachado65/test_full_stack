class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.references :comprador, foreign_key: true
      t.references :ingresso, foreign_key: true
      t.boolean :pago

      t.timestamps
    end
  end
end
