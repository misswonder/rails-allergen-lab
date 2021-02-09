class Ingredient < ApplicationRecord
    has_many :recipe_ingredients, dependent: :destroy
    has_many :recipes, through: :recipe_ingredients 
    has_many :allergies
    has_many :allergic_users, through: :allergies, :source => :user

    def self.sorted_by_allergies 
        self.all.sort_by { |ingreident| ingreident.allergies.count }.reverse
        # self.all.sort_by { |ingreident| ingreident.allergic_users.count }.reverse
    end 
end
