class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :recipe, index: true
      t.timestamps
    end
  end
end
