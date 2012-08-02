class AddMoneyToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :money, :integer, :default => 0
  end
end
