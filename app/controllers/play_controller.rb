class PlayController < ApplicationController
	before_filter :authenticate_user!, :except => [:game, :index]  


   def upload
    @game = Game.new
    @game.author=current_user.username
    @game.thumb=""
    @game.link=""
    @game.rating=0
   end
   
   def game
   	  @game = Game.where(:name=>params[:gamename]).first
   end
   
   def index 
   	  @games = Game.order("name").page(params[:page]).per(5)
   end
   
   def addfav
		  @game = Game.where(:name => params[:gamename]).first
		  
		  if current_user.has_fav?(@game.id)
			  fav = FavouriteGame.new()
			  fav.user_id = current_user.id 
			  fav.game_id = @game.id
			   
			  respond_to do |format|
			      if fav.save
			        format.html { redirect_to "/game/"+(@game.name), notice: 'Added to Favourites' }
			      else
			        format.html { redirect_to @game, notice: 'Adding to Favourites failed' }
			      end
		      end
		  else
			  redirect_to "/game/"+(@game.name), notice: 'Already Added to Favourites'
	      end
	    
  end
  
  def removefav
     @game = Game.where(:name => params[:gamename]).first
     @fav = FavouriteGame.where(:user_id => current_user.id, :game_id => @game.id ).first
     @fav.destroy
     redirect_to "/game/"+(@game.name), notice: 'Removed from Favourites'
  end
   
end
