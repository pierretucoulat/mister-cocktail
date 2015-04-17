class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: {scope: :cocktail}
  validates :description, presence: true
end
