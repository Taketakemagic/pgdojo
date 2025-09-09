class CreateLanguages < ActiveRecord::Migration[8.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :code_name
      t.text :description

      t.timestamps
    end
  end
end