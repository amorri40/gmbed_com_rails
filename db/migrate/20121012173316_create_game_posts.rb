class CreateGamePosts < ActiveRecord::Migration
  def change
    create_table :game_posts do |t|
	  t.integer :game_id
	  t.string :comment 
	  t.integer :rating
      t.timestamps
    end
  end
end
