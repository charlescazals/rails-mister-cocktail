class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail, message: "Already a dose of this for this cocktail"}
end
