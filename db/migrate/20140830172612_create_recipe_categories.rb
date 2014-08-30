class CreateRecipeCategories < ActiveRecord::Migration
  def change
    create_table :recipe_categories do |t|
      t.references :recipe, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
