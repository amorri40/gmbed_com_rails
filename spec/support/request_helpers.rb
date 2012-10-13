# spec/support/request_helpers.rb
require 'spec_helper'
include Warden::Test::Helpers
 
module RequestHelpers
  def lets_login_as(groupname)
    user = Usergroup.find_by_user_title(groupname).user.first
    login(user)
  end
  
  def login_as_admin
  	lets_login_as("Admin")
  end
  
  def login_as_guest
  	lets_login_as("Guest")
  end
  
  def login_as_normal
  	user = User.find_by_username("normal_user")
  	login(user)
  end
 
  def login(user)
    login_as user, scope: :user
  end
  
end