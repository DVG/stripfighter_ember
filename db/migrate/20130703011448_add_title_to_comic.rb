class AddTitleToComic < ActiveRecord::Migration
  def change
    add_column :comics, :title, :string
  end
end
