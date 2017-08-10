class AddActiveToQuestsesses < ActiveRecord::Migration[5.0]
  def change
    add_column :questsesses, :active, :boolean
  end
end
