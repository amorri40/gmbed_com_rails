class CreateUsergroups < ActiveRecord::Migration
  def change
    create_table :usergroups do |t|
      t.string :name
      t.string :user_title
      t.string :html_pre
      t.string :html_post
      t.string :perms

      t.timestamps
    end
    # Create the Default User groups
    Usergroup.create( :name =>"Guests", :user_title => "Guest", :html_pre => "", :html_post => "", :perms => "")
    Usergroup.create( :name =>"Unverified Users", :user_title => "Unverified", :html_pre => "", :html_post => "", :perms => "")
    Usergroup.create( :name =>"Registered Users", :user_title => "Registered", :html_pre => "<b>", :html_post => "</b>", :perms => "")
    Usergroup.create( :name =>"Moderators", :user_title => "Moderator", :html_pre => "<b style='font-color: #000099;'>", :html_post => "</b>", :perms => "")
    Usergroup.create( :name =>"Administrators", :user_title => "Admin", :html_pre => "<b style='font-color: #990000;'>", :html_post => "</b>", :perms => "")
    Usergroup.create( :name =>"Banned Users", :user_title => "Banned", :html_pre => "<span style='text-decoration: line-through;'>", :html_post => "</span>", :perms => "")
  end
end
