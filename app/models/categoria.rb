class Categoria < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many :facts
end
