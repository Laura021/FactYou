class CreateTipoUsuarios < ActiveRecord::Migration
  def change
    create_table :tipo_usuarios do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
