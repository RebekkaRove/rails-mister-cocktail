class Cocktail < ApplicationRecord
  has_many :ingredients, through: :dose
  has_many :dose, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
