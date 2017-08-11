class CreateBreakoutQuestsesses < ActiveRecord::Migration[5.0]
  def change
    create_table :breakout_questsesses do |t|
      t.references :breakout
      t.references :questsess
      t.timestamps
    end
  end
end
