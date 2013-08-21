class CampaignsController < ApplicationController
  before_filter :authenticate_company!
  def index
    @company = Company.find(current_company.id)
    @campaign = @company.campaigns.last
  end

  def show
     	@company = Company.find(params[:company_id])
    	@campaign = @company.campaigns.find(params[:id])
  end

  def edit
  	@company = Company.find(params[:company_id])
  	@campaign = @company.campaigns.find(params[:id])
  end
end
