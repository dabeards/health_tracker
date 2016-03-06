class CaloricIntake < ActiveRecord::Base

  def self.consumed_calories
    start_time = Time.now.beginning_of_day
    end_time = Time.now.end_of_day
    where(:created_at).where("created_at BETWEEN ? and ?", start_time, end_time).group(:consumed_calories)
  end
end
