class Fact < ActiveRecord::Base
  attr_accessible :admin_user_id, :categoria_id, :descripcion, :fuente, :nombre
  belongs_to :categoria , :foreign_key => "categoria_id"
  belongs_to :admin_user, :foreign_key => "admin_user_id"
end
