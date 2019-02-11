class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :ingredient, :scope => [:cocktail]
  validates :description, presence: true
end
