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

ActiveRecord::Schema[7.1].define(version: 2023_10_27_014353) do
  create_table "clues", force: :cascade do |t|
    t.string "clue_type"
    t.string "powers"
    t.integer "pokemon_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_clues_on_pokemon_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "trainer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_games_on_trainer_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "trainer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_pokemons_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.integer "current_pokemon_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["current_pokemon_id"], name: "index_trainers_on_current_pokemon_id"
    t.index ["game_id"], name: "index_trainers_on_game_id"
  end

  add_foreign_key "clues", "pokemons"
  add_foreign_key "games", "trainers"
  add_foreign_key "pokemons", "trainers"
  add_foreign_key "trainers", "current_pokemons"
  add_foreign_key "trainers", "games"
end
