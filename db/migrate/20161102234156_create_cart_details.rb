class CreateCartDetails < ActiveRecord::Migration
  def change
    create_table :cart_details do |t|
      t.references :product, index: true, foreign_key: true
      t.references :shopping_cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
