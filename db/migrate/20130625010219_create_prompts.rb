class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :content

      t.timestamps
    end
  end
end
