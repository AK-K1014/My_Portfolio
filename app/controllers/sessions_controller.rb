class SessionsController < ApplicationController
  def login
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'login', status: :unprocessable_entity
    end
  end

  def destroy
  end
end