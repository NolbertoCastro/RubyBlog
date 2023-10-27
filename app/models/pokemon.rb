class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :clues
end