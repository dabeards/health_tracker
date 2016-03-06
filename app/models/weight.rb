class Weight < ActiveRecord::Base
  validates :weight, uniqueness: { scope: :weight_date }
end
