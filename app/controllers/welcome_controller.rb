class WelcomeController < ApplicationController
  def index
    @games = Game.order("rating DESC").limit(6)
    @random_games = Game.offset(rand(Game.count)).limit(1)
    @recent_games = Game.order("id DESC").limit(6)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
end
