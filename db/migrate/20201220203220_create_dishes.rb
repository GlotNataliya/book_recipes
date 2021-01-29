class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :title
      t.string :image
      t.references :content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
