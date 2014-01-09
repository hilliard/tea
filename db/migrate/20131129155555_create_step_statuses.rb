class CreateStepStatuses < ActiveRecord::Migration
  def change
    create_table :step_statuses do |t|
      t.string :stepstatus_name

      t.timestamps
    end
  end
end
