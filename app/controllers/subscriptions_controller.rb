class SubscriptionsController < ApplicationController

	def new
		@subscription = Subscription.new
	end

	def create
		@subscription = Subscription.new(subscription_params)
		if @subscription.save
			redirect_to root_path
		end
	end



	def subscription_params
    	params.require(:subscription).permit(:fname, :lname, :email) 
   	end


end
