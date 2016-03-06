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
