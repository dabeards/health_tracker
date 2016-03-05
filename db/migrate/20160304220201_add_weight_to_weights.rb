class AddWeightToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :weight, :decimal, precision: 5, scale: 2
  end
end
