class PlayController < ApplicationController

   def upload
    
   end
   
   def index 
   	  @games = Game.order("name").page(params[:page]).per(5)
   end
   
end
