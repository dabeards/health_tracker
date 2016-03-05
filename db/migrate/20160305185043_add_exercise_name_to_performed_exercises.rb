class AddExerciseNameToPerformedExercises < ActiveRecord::Migration
  def change
    add_column :performed_exercises, :exercise_name, :string
  end
end
