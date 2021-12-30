# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_23_121725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biohistories", force: :cascade do |t|
    t.string "name"
    t.string "story"
    t.bigint "bio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bio_id"], name: "index_biohistories_on_bio_id"
  end

  create_table "bios", force: :cascade do |t|
    t.string "name"
    t.string "story"
    t.bigint "cryptopunk_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cryptopunk_id"], name: "index_bios_on_cryptopunk_id"
  end

  create_table "cryptopunks", force: :cascade do |t|
    t.string "punktype"
    t.string "gender"
    t.string "skintone"
    t.integer "traitcount"
    t.string "accessories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "punktraits", force: :cascade do |t|
    t.bigint "cryptopunk_id", null: false
    t.bigint "trait_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cryptopunk_id"], name: "index_punktraits_on_cryptopunk_id"
    t.index ["trait_id"], name: "index_punktraits_on_trait_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "biohistories", "bios"
  add_foreign_key "bios", "cryptopunks"
  add_foreign_key "punktraits", "cryptopunks"
  add_foreign_key "punktraits", "traits"
end
