class CreateConsumedCalories < ActiveRecord::Migration
  def change
    create_table :consumed_calories do |t|
      t.decimal :consumed_calories
      t.datetime :calories_date

      t.timestamps null: false
    end
  end
end
