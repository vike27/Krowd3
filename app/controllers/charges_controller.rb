class ChargesController < ApplicationController

	def new
		@charge = Charge.new(amount: params[:amount])
		@charge.contest_id = params[:id]
		@charge.user_id = params[:id]
	end

	def create
	  @charge = Charge.new(charges_params)
	  if @charge.save_with_payment(@charge)
	    redirect_to @charge, :notice => "Contribution was recorded succesfully!"
	  else
	    redirect_to root_path
	  end
	end

	def charges_params
		params.require(:charge).permit(:stripe_card_token, :contest_id, :user_id, :amount)
	end

end
