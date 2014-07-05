class RenameStripeChargesColumn < ActiveRecord::Migration
  def change
  	rename_column :charges, :stripe_customer_token, :stripe_charge_token
  end
end
