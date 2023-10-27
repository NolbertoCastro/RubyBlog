class Trainer < ApplicationRecord
  belongs_to :game
  has_many :pokemons
  belongs_to :current_pokemon, class_name: 'Pokemon', optional: true
end