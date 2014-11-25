class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.date :date
      t.float :salary
      t.float :maintenance
      t.float :utility_bills
      t.float :total_expenditure

      t.timestamps
    end
  end
end
