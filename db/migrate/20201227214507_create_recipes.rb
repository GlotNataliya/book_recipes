class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :cooking_method
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
