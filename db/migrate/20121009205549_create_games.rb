class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :author
      t.string :link
      t.integer :rating
      t.string :exe
      t.integer :width
      t.integer :height
      t.string :parameters
      t.string :thumb
      t.string :backcolor
      t.string :bimage
      t.string :pimage
      t.string :limage
      t.integer :load_width
      t.integer :load_height
      t.integer :loadx
      t.integer :loady

      t.timestamps
    end
  end
end
