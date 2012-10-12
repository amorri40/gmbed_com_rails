class CreateUserGroupsUserJoin < ActiveRecord::Migration
  def up
	 create_table :usergroups_users, :id => false do |t|
	  t.column :usergroup_id, :integer, :null => false 
	  t.column :user_id, :integer, :null => false
	 end
  end

  def down
  end
end
