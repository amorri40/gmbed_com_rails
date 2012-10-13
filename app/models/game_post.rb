class GamePost < ActiveRecord::Base
   attr_accessible :comment, :rating, :user_id, :game_id
  
  
  belongs_to :game
  belongs_to :user

  
end
