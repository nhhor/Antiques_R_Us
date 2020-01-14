class UpdateColumnPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column(:purchases, :receipt_id)
  end
end
