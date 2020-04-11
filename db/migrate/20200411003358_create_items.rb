class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.references :list, foreign_key: true
      t.timestamps
    end
  end
end
