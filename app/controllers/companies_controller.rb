class CompaniesController < ApplicationController
	def index

		@companies = Company.all
		@campaigns = Campaign.all
	end

	def show
		@companies = Company.all
		@campaign = Campaign.all
		@company = Company.find(params[:id])
		@campaigns = @company.campaigns.all
	end

	def edit
	end

	def new
	end
end
