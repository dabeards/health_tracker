class CreateCaloricIntakes < ActiveRecord::Migration
  def change
    create_table :caloric_intakes do |t|
      t.decimal :consumed_calories
      t.datetime :calories_date

      t.timestamps null: false
    end
  end
end
