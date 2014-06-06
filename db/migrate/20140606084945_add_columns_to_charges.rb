class AddColumnsToCharges < ActiveRecord::Migration
  def change
  	add_column :charges, :contest_id, :integer
  	add_column :charges, :user_id, :integer
  	add_column :charges, :amount, :decimal
  end
end
