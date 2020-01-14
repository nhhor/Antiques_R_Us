class AddColumnsPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column(:purchases, :product_id, :integer)
  end
end
