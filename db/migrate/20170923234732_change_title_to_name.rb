class ChangeTitleToName < ActiveRecord::Migration
  def change
    change_column :songs, :title, :name
  end
end
