class AddColumnNickToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :nick, :string
  end
end
