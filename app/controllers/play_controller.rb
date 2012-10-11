class PlayController < ApplicationController

   def upload
    
   end
   
   def game
   	  @game = Game.where(:name=>params[:gamename]).first
   end
   
   def index 
   	  @games = Game.order("name").page(params[:page]).per(5)
   end
   
end
