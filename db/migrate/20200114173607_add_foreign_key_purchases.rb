class AddForeignKeyPurchases < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :purchases, :products
  end
end
