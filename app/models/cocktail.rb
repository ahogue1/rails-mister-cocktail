class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, :through => :doses
  validates :name, uniqueness: { case_sensitive: false }
  validates :name, presence: true
end