class MainController < ApplicationController
  skip_before_action :validate, only: [:login, :somchai]

  def login
    @error = flash[:notice]

  end

  # this is login post
  def somchai
    puts "helloooooo"
    @username = params[:username]
    
    @user = User.find_by(username: @username)

    if  !@user || !@user.authenticate(params[:password])
      flash[:notice] = "username does not exist or password does not match"
      redirect_to main_login_path
      return
    end
    
    session[:logged_in] = true
    redirect_to "/students"
  end

  def logout
    reset_session
  end

  # this is logout post
  def nattee
  end
end
