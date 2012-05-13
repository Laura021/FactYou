class AddColumnTipoUsuarioIdToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :tipo_usuario_id, :integer
  end
end
