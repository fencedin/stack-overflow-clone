class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :title
      t.text :details
      t.integer :score
      t.timestamps
    end
  end
end
