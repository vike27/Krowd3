class PagesController < ApplicationController

	def home
		@subscription = Subscription.new
	end

end
