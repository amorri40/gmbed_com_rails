class FavouriteGame < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :game #, :foreign_key => "game_id"
end
