class RemoveColumnPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column(:purchases, :item_id)
  end
end
