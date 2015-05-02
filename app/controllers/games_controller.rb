class GamesController < ApplicationController

	before_action :set_game, :except => [:index, :new, :create]

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(game_params)
		if @game.save
			StudentMailer.sample_email(@game).deliver
			redirect_to games_path
		else
			render "new"
		end
	end

	def edit

	end

	def update

		if @game.update(game_params)
			redirect_to games_path
		else
			render "edit"
		end
	end

	def show
	
	end

	def index
		@games = Game.all
	end

	def destroy
		@game.destroy
		redirect_to games_path
	end


	private

	def set_game
		@game = Game.friendly.find(params[:id])
	end

	def game_params
		params.require(:game).permit!
	end
end
