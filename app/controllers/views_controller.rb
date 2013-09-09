class ViewsController < ApplicationController
	def create
		@views = View.new
		if @views.save(params[:campaign])
			redirect_to root_url
		else
			redirect_to "/companies/2/campaign/2"
		end
	end
end
