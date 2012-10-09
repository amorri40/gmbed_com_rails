class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.datetime :reg_time
      t.datetime :last_activity
      t.datetime :last_visit
      t.string :email
      t.date :dob
      t.integer :timezone
      t.integer :dst
      t.string :homepage
      t.string :aim
      t.string :msn
      t.string :yim
      t.string :bio
      t.string :occ

      t.timestamps
    end
  end
end
