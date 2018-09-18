class AddShopIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :shop_id, :integer
  end
end
