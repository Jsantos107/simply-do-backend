class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.boolean :done
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
