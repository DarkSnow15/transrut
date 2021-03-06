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

ActiveRecord::Schema.define(version: 2019_12_09_133354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carros", force: :cascade do |t|
    t.string "placa"
    t.bigint "documen_prop"
    t.string "nom_prop"
    t.bigint "cel_propietario"
    t.date "fecha_venc_soat"
    t.date "fecha_venc_tm"
    t.date "fecha_venc_pe"
    t.date "fecha_venc_pc"
    t.boolean "serv_publico"
    t.string "img_lic_trans"
    t.string "img_tarj_oper"
    t.string "img_soat"
    t.string "img_tec_mecan"
    t.string "carro_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.bigint "documento"
    t.string "nombres"
    t.string "apellidos"
    t.string "correo"
    t.string "celular"
    t.string "telefono"
    t.string "ciudad"
    t.string "direccion"
    t.boolean "empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conductorcarros", force: :cascade do |t|
    t.bigint "conductor_id"
    t.bigint "carro_id"
    t.boolean "state", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carro_id"], name: "index_conductorcarros_on_carro_id"
    t.index ["conductor_id"], name: "index_conductorcarros_on_conductor_id"
  end

  create_table "conductores", force: :cascade do |t|
    t.bigint "documento"
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

  create_table "servicios", force: :cascade do |t|
    t.datetime "fecha_hora"
    t.text "descripcion"
    t.bigint "conductorcarro_id"
    t.bigint "cliente_id"
    t.bigint "valor_serv"
    t.bigint "num_cumplido"
    t.bigint "num_factura"
    t.text "observaciones"
    t.text "comision"
    t.string "direccion_inicio"
    t.string "direccion_destino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_servicios_on_cliente_id"
    t.index ["conductorcarro_id"], name: "index_servicios_on_conductorcarro_id"
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

  add_foreign_key "conductorcarros", "carros"
  add_foreign_key "conductorcarros", "conductores"
  add_foreign_key "servicios", "clientes"
  add_foreign_key "servicios", "conductorcarros"
end
