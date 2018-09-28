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

ActiveRecord::Schema.define(version: 20180928123352) do

  create_table "compradors", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.float "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingressos", force: :cascade do |t|
    t.float "preco"
    t.string "nome"
    t.float "taxa"
    t.datetime "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "comprador_id"
    t.integer "ingresso_id"
    t.boolean "pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comprador_id"], name: "index_pedidos_on_comprador_id"
    t.index ["ingresso_id"], name: "index_pedidos_on_ingresso_id"
  end

end
