class WelcomeController < ApplicationController
  def index
    if current_user.employer?
    redirect_to employer_dashboard_index_path
    else
    redirect_to applicant_dashboard_index_path
    end
  end 
end
