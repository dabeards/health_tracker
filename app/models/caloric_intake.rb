class CaloricIntake < ActiveRecord::Base

  def self.consumed_calories
    # start_time = DateTime.now.beginning_of_day
    # end_time = DateTime.now.end_of_day
    # where(:created_at).where("created_at BETWEEN ? and ?", start_time, end_time).group(:consumed_calories).sum
    # today = select(:consumed_calories).where("created_at BETWEEN ? and ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
    # today.all.reduce(0.0) {|sum, t| sum + t}
    # today.to_a.sum
    if where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
      total_calories_consumed = self.where(['created_at > ?', DateTime.now.beginning_of_day]).sum(:consumed_calories)
    end
  end
end
