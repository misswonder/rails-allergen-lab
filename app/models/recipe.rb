class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients 

  # def self.search(query)
  #   search_query = query ? query : ""
  #   self.all.select { |r| r. title.include?(search_query)}
  # end 
end
