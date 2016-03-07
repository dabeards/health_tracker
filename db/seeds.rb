# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ExerciseType.create([
  { exercise_type_name: 'Shoulders' },
  { exercise_type_name: 'Arms' },
  { exercise_type_name: 'Back' },
  { exercise_type_name: 'Chest' },
  { exercise_type_name: 'Legs' },
  { exercise_type_name: 'Abs' }
])
# weights = ExerciseType.create!(exercise_type_name: "Lift Weights", created_at: "2016-03-05 21:20:00")
# abs = ExerciseType.create!(exercise_type_name: "Ab Workout", created_at: "2016-03-04 19:19:00")
# legs = ExerciseType.create!(exercise_type_name: "Leg Day", created_at: "2016-03-03 17:17:00")
# yoga = ExerciseType.create!(exercise_type_name: "Hot Yoga", created_at: "2016-03-02 15:15:00")
# basketball = ExerciseType.create!(exercise_type_name: "Basketball", created_at: "2016-03-01 13:12:11")
# swimming = ExerciseType.create!(exercise_type_name: "Swimming", created_at: "2016-02-29 12:11:10")
100.times do |n|
  # ExerciseType.create!(exercise_type_name: rand(6)+1, exercise_date: DateTime.now - (rand * 21))
  StepCount.create!(steps_taken: rand(3000), steps_date: DateTime.now - (rand * 21))
  PerformedExercise.create!(burned_calories: rand(900), exercise_date: DateTime.now - (rand * 21))
  Weight.create!(weight: rand(300), weight_date: (DateTime.now.to_date - (n)))
  CaloricIntake.create!(consumed_calories: rand(900), calories_date: DateTime.now - (rand * 21))
end
