class ReAddForeignKeyPurchases < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :purchases, :customers
  end
end
