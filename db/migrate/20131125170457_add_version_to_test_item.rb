class AddVersionToTestItem < ActiveRecord::Migration
  def change
    add_column :test_items, :version, :string
  end

  def self.down
    remove_column :test_items, :version, :string
  end
end
