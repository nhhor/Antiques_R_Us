class ReaddForeignKeyPurchases < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :purchases, :receipts
  end
end
