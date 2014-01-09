class RemoveVersionIdFromVersion < ActiveRecord::Migration
  def change
  	remove_column :version, :version_id, :integer
  end
end
