class ProfileCommentsController < ApplicationController

def index 
	@user = User.find(params[:user_id])
	@profile = @user.profile
end


	def create
	    @user = User.find(params[:user_id]) #user of the profile
	    @profile_comment = params[:profile_comment]
	    #@profile_comment.merge!(:user_id => current_user.id, :profile_id => @user.id)
	    
	    @post = ProfileComment.new(@profile_comment)
		@post.user_id = current_user.id
	    @post.profile_id = @user.profile.id
		@post.save
		
	    respond_to do |format|
	      if @post.save
	        format.html { redirect_to "/users/"+(@user.name), notice: 'Comment added' }
	        
	      else
	        format.html { redirect_to "/users/"+(@user.name), notice: 'Comment failed' }
	      end
	    end
    end

end
