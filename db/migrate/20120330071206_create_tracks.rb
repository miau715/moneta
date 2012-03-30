class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.float :price
      t.string :description
      t.string :note
      t.integer :category_id
      t.date :date
      
      t.timestamps
    end
  end
end