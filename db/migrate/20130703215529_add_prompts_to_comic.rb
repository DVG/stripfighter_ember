class AddPromptsToComic < ActiveRecord::Migration
  def change
    add_column :comics, :prompt_one_id, :integer
    add_column :comics, :prompt_two_id, :integer
  end
end
