class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.string :title
      t.text :precondition
      t.text :step
      t.text :testdata
      t.text :expected_results
      t.string :subsystem
      t.text :postcondition
      t.string :requirement_reference
      t.text :comments

      t.timestamps
    end
    add_index :test_cases, :title, :unique => true
  end

  def self.down
    drop_table  :test_cases
  end
end
