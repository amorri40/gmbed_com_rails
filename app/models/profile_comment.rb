class ProfileComment < ActiveRecord::Base
  attr_accessible :comment
  
  belongs_to :profile
  belongs_to :user
end
