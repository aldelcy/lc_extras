class CreateBreakoutRegists < ActiveRecord::Migration[5.0]
  def change
    create_table :breakout_regists do |t|
      t.references :breakout
      t.references :user

      t.timestamps
    end
  end
end
