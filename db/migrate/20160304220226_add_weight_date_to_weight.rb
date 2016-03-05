class AddWeightDateToWeight < ActiveRecord::Migration
  def change
    add_column :weights, :weight_date, :datetime
  end
end
