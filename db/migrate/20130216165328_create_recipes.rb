class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.text :ingredients
      t.text :directions
      t.string :photo_url
      t.integer :category_id
      t.integer :user_id
      t.integer :cookbook_id

      t.timestamps
    end
  end
end
