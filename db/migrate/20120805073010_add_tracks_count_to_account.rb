class AddTracksCountToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :tracks_count, :integer, :default => 0
  end
end
