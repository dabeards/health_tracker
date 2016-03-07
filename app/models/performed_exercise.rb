class PerformedExercise < ActiveRecord::Base
  has_many :exercise_types

  def self.burned_calories
    if where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
      where(['created_at > ?', DateTime.now.beginning_of_day]).sum(:burned_calories)
    end
  end

  def self.net_calories_of_the_day
     ((CaloricIntake.consumed_calories) - PerformedExercise.burned_calories)
  end
end
