class CreateProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
      t.string :province_code
      t.float :tax_rate

      t.timestamps
    end
  end
end
