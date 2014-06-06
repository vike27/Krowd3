class Charge < ActiveRecord::Base

	attr_accessor :stripe_card_token

	belongs_to :contest
	belongs_to :user

	def save_with_payment(charge)
	  if valid?
	    Stripe::Charge.create(
	      :amount => (charge.amount.to_i)*100,
	      :currency => "usd",
	      :card => stripe_card_token);
	    save
	  end
	rescue Stripe::InvalidRequestError => e
	  logger.error "Stripe error while creating customer: #{e.message}"
	  errors.add :base, "There was a problem with your credit card."
	  false
	end

end
