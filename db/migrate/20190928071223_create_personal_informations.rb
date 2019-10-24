class CreatePersonalInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_informations do |t|
      t.string :postal_code     
      t.string :prefecture      
      t.string :city            
      t.string :number          
      t.string :building        
      t.string :identification
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
