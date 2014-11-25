class AddTotalRevenueToRevenue < ActiveRecord::Migration
  def change
    add_column :revenues, :Total_revenue, :float
  end
end
