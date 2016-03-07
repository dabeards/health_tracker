class Weight < ActiveRecord::Base
  validates :weight, uniqueness: { scope: :weight_date }

  def self.last_weight_entered
    if where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
      where(['created_at > ?', DateTime.now.beginning_of_day]).sum(:weight)
    end
  end
end
