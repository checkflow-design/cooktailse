class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredients

  validates :description, presence: true
  validates :description, uniqueness: true
end
