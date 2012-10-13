class Game < ActiveRecord::Base
  attr_accessible :author, :backcolor, :bimage, :description, :exe, :height, :limage, :link, :load_height, :load_width, :loadx, :loady, :name, :parameters, :pimage, :rating, :thumb, :width

belongs_to :user, :foreign_key => 'author'
belongs_to :genre
validates_associated :genre
validates_associated :user
validates :name, :presence => true
validates :author, :presence => true

validates_uniqueness_of :name

has_many :game_posts
#has_many :favourite_game, :foreign_key => "game_id"

end
