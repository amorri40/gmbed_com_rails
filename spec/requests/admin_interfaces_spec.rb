require 'spec_helper'
require 'support/request_helpers'

describe "AdminInterfaces" do
  fixtures :users
  fixtures :usergroups
  
  include RequestHelpers
  
  it "allows admin users to view the admin/users panel" do 
	  login_as_admin
	  visit "/admin/users"
	  current_path.should eq "/admin/users"
  end
  
  it "does not allow guests to view the admin/users panel" do 
      login_as_guest
	  visit "/admin/users"
	  current_path.should_not eq "/admin/users"
  end
  
  it "does not allow normal logged in users to view the admin/users panel" do 
      login_as_normal
	  visit "/admin/users"
	  current_path.should_not eq "/admin/users"
  end
  
end
