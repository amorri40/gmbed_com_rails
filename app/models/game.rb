class Game < ActiveRecord::Base
  attr_accessible :author, :backcolor, :bimage, :description, :exe, :height, :limage, :link, :load_height, :load_width, :loadx, :loady, :name, :parameters, :pimage, :rating, :thumb, :width

belongs_to :user
belongs_to :genre
validates_associated :genre
validates_associated :user
validates :name, :presence => true
validates :author, :presence => true

end
