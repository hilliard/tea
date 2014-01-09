class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.text :action
      t.text :expected_result
      t.string :status
      t.string :system
      t.string :subsystem

      t.timestamps
    end
  end
end
