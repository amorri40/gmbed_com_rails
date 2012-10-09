class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
