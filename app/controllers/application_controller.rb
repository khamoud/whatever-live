class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    company_campaigns_path(current_company)
  end
  def allow_edit
  	unless current_company && current_company.user_level == 9
  		redirect_to root_url
  	end
  end
end
