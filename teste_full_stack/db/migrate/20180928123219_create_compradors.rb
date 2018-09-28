class CreateCompradors < ActiveRecord::Migration[5.1]
  def change
    create_table :compradors do |t|
      t.string :nome
      t.string :email
      t.float :telefone

      t.timestamps
    end
  end
end
