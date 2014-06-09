class ChargesController < ApplicationController

	def new
	  @contest = Contest.find(params[:id])
	  @charge = Charge.new(amount: params[:amount])
	end

	def create
	  @charge = Charge.new(charges_params)
	  if @charge.save_with_payment(@charge)
	    redirect_to root_path, :notice => "Contribution was recorded succesfully!"
	  else
	    redirect_to root_path, :notice => "Transaction was not able to be recorded"
	  end
	end

	def charges_params
		params.require(:charge).permit(:stripe_card_token, :contest_id, :user_id, :amount)
	end

end
