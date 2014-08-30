class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :items
      t.text :preparation
      t.references :category, index: true
      t.references :user, index: true
      t.integer :parent_id
      t.timestamps
    end
  end
end
