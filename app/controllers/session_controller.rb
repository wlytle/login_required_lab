class SessionController < ApplicationController
  def new
  end

  def create
    if params[:username].nil? || params[:username].empty?
      redirect_to login_path
    else
      session[:username] = params[:username]
      redirect_to home_path
    end
  end
end
