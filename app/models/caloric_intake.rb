class CaloricIntake < ActiveRecord::Base
  def self.consumed_calories
    group(:created_at).where(:consumed_calories).sum
  end
end
