# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120513023524) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
    t.index ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"
    t.index ["namespace"], :name => "index_active_admin_comments_on_namespace"
    t.index ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  end

  create_table "tipo_usuarios", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "nick"
    t.integer  "tipo_usuario_id"
    t.index ["email"], :name => "index_admin_users_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true
    t.index ["tipo_usuario_id"], :name => "index_admin_users_on_tipo_usuario_id"
    t.foreign_key ["tipo_usuario_id"], "tipo_usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "admin_users_ibfk_1"
  end

  create_table "categoria", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "facts", :force => true do |t|
    t.integer  "admin_user_id"
    t.integer  "categoria_id"
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "fuente"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.index ["admin_user_id"], :name => "index_facts_on_admin_user_id"
    t.index ["categoria_id"], :name => "index_facts_on_categoria_id"
    t.foreign_key ["admin_user_id"], "admin_users", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "facts_ibfk_1"
    t.foreign_key ["categoria_id"], "categoria", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "facts_ibfk_2"
  end

end
