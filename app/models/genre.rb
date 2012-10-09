class Genre < ActiveRecord::Base
  attr_accessible :description, :image, :name
  
  has_many :games
end
