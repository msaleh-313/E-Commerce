class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|

      t.string :name
      t.string :price
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
