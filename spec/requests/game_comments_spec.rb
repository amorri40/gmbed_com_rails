require 'spec_helper'

describe "GameComments" do
  
  fixtures :users
  fixtures :usergroups
  fixtures :games
  
  it "will show game comments under the game" do 
	  visit "/game/1945speed"
	  page.should have_content('Comments')
  end
  
  it "will allow adding comments from logged in users" do 
	  visit "/game/1945speed"
	  fill_in('comment', :with => "Great!")
	  click_button('save')
  end
  
end
