class AddColumnPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column(:purchases, :receipt_id, :integer)
  end
end
