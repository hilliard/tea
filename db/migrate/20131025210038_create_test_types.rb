class CreateTestTypes < ActiveRecord::Migration
  def change
    create_table :test_types do |t|
      t.string :testtype_name

      t.timestamps
    end
  end
end
