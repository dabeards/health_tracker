class AddExerciseNameToPerformedExercises < ActiveRecord::Migration
  def change
    add_column :performed_exercises, :excercise_name, :string
  end
end
