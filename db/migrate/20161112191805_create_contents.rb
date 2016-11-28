class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :area
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
