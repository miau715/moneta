class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.string :stock_type
      t.float :count
      
      t.timestamps
    end
  end
end
