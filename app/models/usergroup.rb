class Usergroup < ActiveRecord::Base
  attr_accessible :html_post, :html_pre, :name, :perms, :user_title
  
  has_and_belongs_to_many :user
end
