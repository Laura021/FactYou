ActiveAdmin.register Fact do
  menu :label => "Facts"
  
  filter :categoria , :collection => Hash[Categoria.all.map{|b| [b.nombre,b.id]}]
  filter :nombre
  
  index do
    column :nombre
    column "Usuario" do |fact|
      fact.admin_user.nick
    end
    column "Categoria" do |fact|
      fact.categoria.nombre
    end
    column :created_at 
    default_actions 
  end
  
  form do |f|
    f.inputs "Nuevo Fact" do
      f.input :nombre
      f.input :categoria, :collection => Hash[Categoria.all.map{|b| [b.nombre,b.id]}]
      f.input :descripcion
      f.input :fuente
    end
    f.buttons
  end
  
  show do |f|
    attributes_table do
       row :nombre
       row "Categoria" do 
         f.categoria.nombre
       end
       row "Usuario" do
         f.admin_user.nick
       end
       row :descripcion
       row :fuente
    end 
  end
  
  
  controller do
    
    def create
      fact = Fact.new(params[:fact])
      fact.admin_user= current_admin_user
      fact.save
      redirect_to admin_facts_path 
      
    end
  end
  
  
end
