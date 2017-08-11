class AddWithToQuestsesses < ActiveRecord::Migration[5.0]
  def change
    add_column :questsesses, :with, :string
  end
end
