class Game < ActiveRecord::Base
  attr_accessible :author, :backcolor, :bimage, :description, :exe, :height, :limage, :link, :loadx, :loady, :name, :parameters, :pimage, :rating, :thumb, :width, :gamelink, :loadwidth, :loadheight

belongs_to :user, :foreign_key => 'author'
belongs_to :genre
validates_associated :genre
validates_associated :user
validates :name, :presence => true
validates :author, :presence => true

validates_uniqueness_of :name
validates_format_of :name, :with => /^[A-Za-z\d_]+$/

has_many :game_posts
#has_many :favourite_game, :foreign_key => "game_id"

mount_uploader :gamelink, GamezipUploader

end
