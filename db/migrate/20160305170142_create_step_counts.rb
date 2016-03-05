class CreateStepCounts < ActiveRecord::Migration
  def change
    create_table :step_counts do |t|
      t.integer :steps_taken
      t.datetime :steps_date

      t.timestamps null: false
    end
  end
end
