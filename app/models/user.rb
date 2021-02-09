class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :ingredients, through: :recipes 
    has_many :allergies
    has_many :ingredient_allergies, through: :allergies, :source => :ingredient 
end
