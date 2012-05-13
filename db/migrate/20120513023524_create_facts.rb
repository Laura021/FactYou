class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.integer :admin_user_id
      t.integer :categoria_id
      t.string :nombre
      t.text :descripcion
      t.string :fuente

      t.timestamps
    end
  end
end
