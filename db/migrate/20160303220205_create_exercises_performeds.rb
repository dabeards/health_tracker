class CreateExercisesPerformeds < ActiveRecord::Migration
  def change
    create_table :exercises_performeds do |t|
      t.decimal :calories_burned
      t.datetime :excercise_date

      t.timestamps null: false
    end
  end
end
