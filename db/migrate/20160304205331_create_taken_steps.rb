class CreateTakenSteps < ActiveRecord::Migration
  def change
    create_table :taken_steps do |t|

      t.timestamps null: false
    end
  end
end
