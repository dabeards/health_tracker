class AddWeightDateToWeight < ActiveRecord::Migration
  def change
    add_column :weights, :weight_date, :date
  end
end
