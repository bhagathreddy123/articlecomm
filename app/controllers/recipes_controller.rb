class RecipesController < ApplicationController
before_action :set_recipe, :except => [:index, :new, :create]

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to recipes_path
		else
			render "new"
		end
	end

	def edit

	end

	def update

		if @recipe.update(recipe_params)
			redirect_to recipes_path
		else
			render "edit"
		end
	end

	def show
		
	end

	def index
		@recipes = Recipe.all
	end

	def destroy
		if @recipe.destroy
		redirect_to recipes_path
	end
	end


	private

	def set_recipe
		@recipe = Recipe.find(params[:id])
	end

	def recipe_params
		params.require(:recipe).permit!
	end

end
