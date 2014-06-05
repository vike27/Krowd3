class SubscriptionsController < ApplicationController

	def new
		@subscription = Subscription.new
	end

	def create
		@subscription = Subscription.new(subscription_params)
		if @subscription.save
	      	flash[:success] = "You've been signed up! We will let you know when we are ready to launch!"
			redirect_to root_path
		else
			flash[:danger] = "Could not subscribe"
	  		redirect_to root_path
	  	end
	end


	def subscription_params
    	params.require(:subscription).permit(:fname, :lname, :email) 
   	end


end
