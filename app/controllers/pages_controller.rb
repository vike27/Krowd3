class PagesController < ApplicationController

	def landing
		@subscription = Subscription.new
		@ready = true
	end

	def home
		@subscription = Subscription.new
	end

	def about
	end

	def contact
	end

end
