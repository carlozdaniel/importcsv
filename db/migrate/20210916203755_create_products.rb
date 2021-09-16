class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :item
      t.string :price
      t.string :total
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
