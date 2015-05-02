class PlayersController < ApplicationController
  def index
  	@player = Player.new
  	@players = Player.all
  end


def create
@player = Player.new(player_params)
if @player.save
redirect_to players_path
end
end

private
def player_params
params.require(:player).permit!
end

end
