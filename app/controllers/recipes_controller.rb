class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all 
        # @recipes = Recipe.search(params[:query])
    end 

    def search
        @recipes = Recipe.all.select { |r| rr.title.include?(params[:query]) } 
        render :index
    end  

end
