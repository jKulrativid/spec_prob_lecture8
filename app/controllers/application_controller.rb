class ApplicationController < ActionController::Base
	before_action :validate

	def validate
    if !session[:logged_in]
      redirect_to "/main/login"
    end
  end
end
