class PerformedExercise < ActiveRecord::Base
  has_many :exercise_types

  def self.burned_calories
    group(:created_at).where(:burned_calories).sum
  end

  def self.net_calories_of_the_day
  (CaloricIntake.consumed_calories) - burned_calories
  end
end
