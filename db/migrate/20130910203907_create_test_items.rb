class CreateTestItems < ActiveRecord::Migration
  def change
    create_table :test_items do |t|
      t.string :track_id
      t.string :description
      t.string :tester
      t.string :status
      t.string :priority
      t.string :risk
      t.date :plan_comp_date
      t.datetime :actl_start_time
      t.datetime :actl_comp_time
      t.string :test_type
      t.text :comment
      t.string :specification
      t.string :bug_id

      t.timestamps
    end
  end

  def self.down
    drop_table  :test_items
  end
end
