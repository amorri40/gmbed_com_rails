class ChangeNullSettingUsers < ActiveRecord::Migration
  def up
    change_table(:users) do |t|
      t.change :aim, :string, :null => true, :default => ""
      t.change :av, :string, :null => true, :default => ""
      t.change :msn, :string, :null => true, :default => ""
      t.change :yim, :string, :null => true, :default => ""
      t.change :bio, :string, :null => true, :default => ""
      t.change :loc, :string, :null => true, :default => ""
      t.change :occ, :string, :null => true, :default => ""
      t.change :homepage, :string, :null => true, :default => ""
      t.change :dst, :string, :null => true, :default => ""
      t.change :timezone, :string, :null => true, :default => ""
      t.change :dob, :string, :null => true, :default => ""
      t.change :regtime, :string, :null => true, :default => ""
      t.change :lastactivity, :string, :null => true, :default => ""
      t.change :lastvisit, :string, :null => true, :default => ""
      t.change :usergroupid, :string, :null => true, :default => ""
      t.change :last_activity, :string, :null => true, :default => ""
      t.change :last_visit, :string, :null => true, :default => ""
      t.change :reg_time, :string, :null => true, :default => ""
      t.change :password, :string, :null => true, :default => ""
      t.change :salt, :string, :null => true, :default => ""
    end
  end

  def down
  end
end
