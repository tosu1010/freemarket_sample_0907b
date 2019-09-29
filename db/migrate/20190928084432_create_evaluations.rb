class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.string      :type       
      t.references  :user,     null: false, foreign_key: true
      t.references  :purchase, null: false, foreign_key: true
      t.timestamps
    end
  end
end
