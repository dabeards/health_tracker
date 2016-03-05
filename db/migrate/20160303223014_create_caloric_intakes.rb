class CreateCaloricIntakes < ActiveRecord::Migration
  def change
    create_table :caloric_intakes do |t|
      t.decimal :consumed_calories, precision: 6, scale: 2
      t.datetime :calories_date

      t.timestamps null: false
    end
  end
end
