class Usergroup < ActiveRecord::Base
  attr_accessible :html_post, :html_pre, :name, :perms, :user_title
end
