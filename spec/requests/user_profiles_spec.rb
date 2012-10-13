require 'spec_helper'

describe "UserProfiles" do

  fixtures :users
  fixtures :usergroups
  fixtures :games
  fixtures :game_posts
  fixtures :profiles
  fixtures :profile_comments
  fixtures :favourite_games
  
  include RequestHelpers

  it "Allows users to view comments on a users page" do 
	  login_as_normal
	  visit "/users/two"
	  page.should have_content('Comments')
  end
  
  it "Shows all the games by this user" do 
	  login_as_normal
	  visit "/users/two"
	  page.should have_content('Games by two')
  end
  
  it "Shows the users favourite games" do 
	  login_as_normal
	  visit "/users/two"
	  page.should have_content('Favourites')
  end
  
end
