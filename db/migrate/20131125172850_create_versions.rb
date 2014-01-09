class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :version_name
      
      t.timestamps
    end
  end
end
