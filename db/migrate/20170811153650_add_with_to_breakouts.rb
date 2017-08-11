class AddWithToBreakouts < ActiveRecord::Migration[5.0]
  def change
    add_column :breakouts, :with, :string
    add_column :breakouts, :where, :string
  end
end
