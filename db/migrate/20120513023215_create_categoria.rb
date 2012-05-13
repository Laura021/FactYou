class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
