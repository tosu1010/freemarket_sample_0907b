class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.boolean     :whether_read, default: false
      t.references  :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
