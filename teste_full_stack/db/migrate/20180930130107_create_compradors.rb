class CreateCompradors < ActiveRecord::Migration[5.1]
  def change
    create_table :compradors do |t|
      t.string :nome
      t.string :telefone
      t.boolean :admin

      t.timestamps
    end
  end
end
