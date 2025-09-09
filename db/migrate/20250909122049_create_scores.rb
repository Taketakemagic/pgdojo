class CreateScores < ActiveRecord::Migration[8.0]
  def change
    create_table :scores do |t|
      t.string :user_name
      t.integer :clear_time
      t.integer :miss_count
      t.integer :score

      t.timestamps
    end
  end
end
