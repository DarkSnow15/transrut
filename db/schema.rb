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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_13_060155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carros", force: :cascade do |t|
    t.string "placa"
    t.string "nom_prop"
    t.integer "id_prop"
    t.date "fecha_venc_soat"
    t.date "fecha_venc_tm"
    t.date "fecha_venc_pe"
    t.date "fecha_venc_pc"
    t.string "img_lic_trans"
    t.string "img_tarj_oper"
    t.string "img_soat"
    t.string "img_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.integer "id_cliente"
    t.string "nombres"
    t.string "apellidos"
    t.string "correo"
    t.string "telefono"
    t.string "ciudad"
    t.string "estado"
    t.string "codigo_trans"
    t.integer "precio"
    t.string "direccion_inicial"
    t.string "direccion_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conductores", force: :cascade do |t|
    t.integer "num_documento"
    t.string "nombre"
    t.string "cedula_img"
    t.string "hoja_vida"
    t.string "licencia"
    t.date "fech_ven_licen"
    t.date "fech_seg_ini"
    t.date "fech_seg_ven"
    t.date "fech_ingreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nombre"
    t.string "avatar"
    t.integer "cedula"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
