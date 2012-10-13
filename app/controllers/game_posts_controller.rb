class GamePostsController < ApplicationController

	def index 
		@posts = GamePost.all
		@game = Game.find(params[:game_id])
	end

	def new 
		@comment = GamePost.new
		respond_to do |format|
		    format.html # new.html.erb
	    end
	end
	
	
	def create
    @game = Game.find(params[:game_id])
    @game_post = params[:game_post]
    @game_post.merge!(:user_id => current_user.id, :game_id => @game.id)
    @post = GamePost.new(@game_post)
	
	
    respond_to do |format|
      if @post.save
        format.html { redirect_to "/game/"+(@game.name), notice: 'Comment added' }
        
      else
        format.html { redirect_to @game, notice: 'Comment failed' }
      end
    end
  end

end
