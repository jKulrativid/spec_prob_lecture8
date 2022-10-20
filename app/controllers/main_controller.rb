class MainController < ApplicationController
  def login
    @error = flash[:notice]

  end

  def somchai
    puts "helloooooo"
    @username = params[:username]
    
    @user = User.find_by(username: @username)

    if  @user && !@user.authenticate(params[:password])
      flash[:notice] = "password does not match"
      redirect_to main_login_path
    end
    
    session[:error] = ""
    session[:logged_in] = true
    redirect_to "/students"
  end
end
