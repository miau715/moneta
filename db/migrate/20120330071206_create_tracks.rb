class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :price
      t.string :description
      t.string :note
      t.integer :category_id
      t.date :exchange_date
      
      t.timestamps
    end
  end
end