class SessionsController < ApplicationController
  before_action :authorized
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    username = params[:username]
    password = params[:password]

    @user = User.find_by(username: username)

    if @user && @user.authenticate(password)
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def welcome
  end

  def destroy 
    session.delete(:user_id)
    @user = nil
    redirect_to '/login'
  end

  def page_requires_login
  end
end
