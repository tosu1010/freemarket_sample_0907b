class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text        :content,             null: false 
      t.integer     :buy_or_sell
      t.integer     :occurrence_year
      t.integer     :occurrence_month
      t.integer     :occurrence_day
      t.integer     :occurrence_time
      t.integer     :occurrence_minute
      t.integer     :occurrence_friquence
      t.text        :bug_detail
      t.string      :name
      t.text        :bug_display_comment 
      t.references  :merchandise,        null: false, foreign_key: true 
      t.references  :user,               null: false, foreign_key: true 
      t.timestamps
    end
  end
end
