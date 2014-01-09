class RemoveSystemSubsystemFromSteps < ActiveRecord::Migration
  def change
    remove_column :steps, :system
    remove_column :steps, :subsystem
  end
end
