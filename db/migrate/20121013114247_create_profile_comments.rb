class CreateProfileComments < ActiveRecord::Migration
  def change
    create_table :profile_comments do |t|
	  t.integer :profile_id, :null => false
	  t.integer :user_id, :null => false
	  t.string :comment, :null => false
	  
      t.timestamps
    end
  end
end
