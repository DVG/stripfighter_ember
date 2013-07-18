class AddUserIdToComic < ActiveRecord::Migration
  def change
    add_column :comics, :user_id, :integer
  end
end
