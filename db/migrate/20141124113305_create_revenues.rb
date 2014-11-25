class CreateRevenues < ActiveRecord::Migration
  def change
    create_table :revenues do |t|
      t.float :tithes
      t.float :offerings
      t.float :donations
      t.float :misc_income

      t.timestamps
    end
  end
end
