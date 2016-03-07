class StepCount < ActiveRecord::Base

  def self.total_steps_taken_today
    if where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
      where(['created_at > ?', DateTime.now.beginning_of_day]).sum(:steps_taken)
    end
  end
end
