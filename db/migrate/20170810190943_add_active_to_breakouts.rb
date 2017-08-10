class AddActiveToBreakouts < ActiveRecord::Migration[5.0]
  def change
    add_column :breakouts, :active, :boolean
  end
end
