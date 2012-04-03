class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.float :value
      
      t.timestamps
    end
  end
end
