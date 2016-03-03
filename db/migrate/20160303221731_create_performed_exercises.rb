class CreatePerformedExercises < ActiveRecord::Migration
  def change
    create_table :performed_exercises do |t|
      t.decimal :burned_calories
      t.datetime :exercise_date

      t.timestamps null: false
    end
  end
end
