class CorrectColumnPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column(:purchases, :transaction)
    add_column(:purchases, :t_number, :integer)
  end
end
