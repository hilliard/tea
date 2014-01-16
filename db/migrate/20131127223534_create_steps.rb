class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.text :action
      t.text :expected_result
      t.string :status

      t.timestamps
    end
    # add_index :steps, :test_case_id
    add_index :steps, :step_number,  :unique => true
  end
end
