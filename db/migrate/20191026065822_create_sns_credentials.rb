class CreateSnsCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :sns_credentials do |t|
      t.string :uid, null: false, unique: true
      t.string :provider, null: false
      t.string :token, null: false, unique: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
