require 'spec_helper'

describe "GameComments" do
  
  fixtures :users
  fixtures :usergroups
  fixtures :games
  fixtures :game_posts
  
  include RequestHelpers
  
  it "will show game comments under the game" do 
	  visit "/game/1945speed"
	  page.should have_content('Comments')
  end
  
  it "will allow adding comments from logged in users" do 
	  login_as_normal
	  visit "/game/1945speed"
	  fill_in(:comment, :with => "Great!")
	  click_button('Add Comment')
  end
  
  it "will not allow adding comments from guests" do 
	  login_as_guest
	  visit "/game/1945speed"
	  page.should_not have_button('Add Comment')
  end
  
end
