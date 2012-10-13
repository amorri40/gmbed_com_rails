class SetCommentUser < ActiveRecord::Migration
  def up
	change_table(:game_posts) do |t|
		t.integer :user_id, :null => false
	end
  end

  def down
  end
end
