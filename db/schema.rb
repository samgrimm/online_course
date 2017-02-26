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

ActiveRecord::Schema.define(version: 20170226200429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aulas", force: :cascade do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.text     "referencias"
    t.integer  "secco_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["secco_id"], name: "index_aulas_on_secco_id", using: :btree
  end

  create_table "cursos", force: :cascade do |t|
    t.string   "titulo"
    t.text     "ementa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seccos", force: :cascade do |t|
    t.string   "titulo"
    t.text     "resumo"
    t.integer  "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_seccos_on_curso_id", using: :btree
  end

  add_foreign_key "aulas", "seccos"
  add_foreign_key "seccos", "cursos"
end
