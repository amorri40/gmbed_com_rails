class Profile < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :user
  has_many :profile_comments
  
end
