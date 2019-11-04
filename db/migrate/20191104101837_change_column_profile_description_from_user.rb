class ChangeColumnProfileDescriptionFromUser < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :profile_description, :text, null: true
  end
  
  def down
    change_column :users, :profile_description, :text, null: false
  end
end
