class Weight < ActiveRecord::Base
  validates :weight_date, uniqueness: { scope: :weight_date }

  def self.last_weight_entered
    if where(['weight_date > ?', DateTime.now.beginning_of_day]).exists?
      where(['weight_date > ?', DateTime.now.beginning_of_day]).sum(:weight)
    end
  end

end
