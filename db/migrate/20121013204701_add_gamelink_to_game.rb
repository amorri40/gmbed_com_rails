class AddGamelinkToGame < ActiveRecord::Migration
  def change
    change_table(:games) do |t|
      t.string :gamelink
    end
  end
end
