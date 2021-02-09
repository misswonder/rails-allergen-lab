# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
User.destroy_all 
Ingredient.destroy_all
RecipeIngredient.destroy_all
Allergy.destroy_all

joe = User.create(username: "Joe")
alice = User.create(username: "Alice")
zach = User.create(username: "Zach")

recipe1 = Recipe.create(title: "Lemon Salmon", user_id: joe.id)
recipe2 = Recipe.create(title: "Peanut Butter", user_id: alice.id)
recipe3 = Recipe.create(title: "Milk Tea", user_id: zach.id)

salmon = Ingredient.create(name: "salmon")
peanut = Ingredient.create(name: "peanut")
milk = Ingredient.create(name: "milk")

RecipeIngredient.create(recipe_id: recipe1.id, ingredient_id: salmon.id)
RecipeIngredient.create(recipe_id: recipe2.id, ingredient_id: peanut.id)
RecipeIngredient.create(recipe_id: recipe3.id, ingredient_id: milk.id)

allergy1 = Allergy.create(user_id: joe.id, ingredient_id: salmon.id)
allergy2 = Allergy.create(user_id: alice.id, ingredient_id: peanut.id)
allergy3 = Allergy.create(user_id: zach.id, ingredient_id: milk.id)



