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

ActiveRecord::Schema.define(version: 20171010003728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplanes", force: :cascade do |t|
    t.string "matricula"
    t.string "tipo"
    t.string "modelo"
    t.integer "nasientos"
    t.date "fadquisicion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pilot_id"
    t.bigint "typeairplane_id"
    t.index ["typeairplane_id"], name: "index_airplanes_on_typeairplane_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "destino"
    t.string "origen"
    t.time "hsalida"
    t.string "clasesdisponibles"
    t.money "precio", scale: 2
    t.time "tevuelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pilot_id"
    t.bigint "airplane_id"
    t.date "fsalida"
    t.index ["airplane_id"], name: "index_flights_on_airplane_id"
    t.index ["pilot_id"], name: "index_flights_on_pilot_id"
  end

  create_table "pilots", force: :cascade do |t|
    t.string "nombrec"
    t.string "ncedula"
    t.string "nlicencia"
    t.date "fcontratacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typeairplanes", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "airplanes", "typeairplanes"
  add_foreign_key "flights", "airplanes"
  add_foreign_key "flights", "pilots"
end
