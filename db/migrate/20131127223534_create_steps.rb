class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.text :action
      t.text :expected_result
      t.string :status

      t.timestamps
    end
    add_index :steps, :test_case_id, { :name => "ix_steps_test_case" }
    add_index :steps, :step_number, { :name => "uix_steps_step_number", :unique => true }
  end
end
