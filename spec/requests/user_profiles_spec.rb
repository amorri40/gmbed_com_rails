require 'spec_helper'

describe "UserProfiles" do

  fixtures :users
  fixtures :usergroups
  fixtures :games
  fixtures :game_posts
  fixtures :profiles
  fixtures :profile_comments
  
  include RequestHelpers

  it "Allows users to view comments on a users page" do 
	  login_as_normal
	  visit "/users/two"
	  current_path.should eq "/users/two"
	  #page.should have_content('Comments')
  end
end
