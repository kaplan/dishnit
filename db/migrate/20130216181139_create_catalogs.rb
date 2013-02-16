class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.integer :cookbook_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
