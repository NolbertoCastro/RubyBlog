class CreateClues < ActiveRecord::Migration[7.1]
  def change
    create_table :clues do |t|
      t.string :clue_type
      t.string :powers
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
