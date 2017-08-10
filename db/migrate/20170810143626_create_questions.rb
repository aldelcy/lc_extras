class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :desc
      t.references :questsess
      t.references :user

      t.timestamps
    end
  end
end
