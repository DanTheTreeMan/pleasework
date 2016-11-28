class CreateTrees < ActiveRecord::Migration[5.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.text :description
      t.integer :height
      t.integer :width
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end
