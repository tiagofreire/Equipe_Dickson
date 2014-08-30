class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :user, index: true
      t.references :category, index: true
      t.text :obs
      t.boolean :ok

      t.timestamps
    end
  end
end
