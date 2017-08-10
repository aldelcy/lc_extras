class CreateQuestsesses < ActiveRecord::Migration[5.0]
  def change
    create_table :questsesses do |t|
      t.string :title
      t.string :desc
      t.string :refnumber
      t.datetime :date
      t.references :user
      
      t.timestamps
    end
  end
end
