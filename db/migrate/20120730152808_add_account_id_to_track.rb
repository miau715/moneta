class AddAccountIdToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :account_id, :integer
  end
end
