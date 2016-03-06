class CreatePerformedExercises < ActiveRecord::Migration
  def change
    create_table :performed_exercises do |t|
      t.belongs_to :exercise_type
      t.decimal :burned_calories, precision: 7, scale: 2
      t.datetime :exercise_date

      t.timestamps null: false
    end
  end
end
