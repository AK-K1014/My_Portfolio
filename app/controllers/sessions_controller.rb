class SessionsController < ApplicationController
  def login
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to top_loggedln_path
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'login', status: :unprocessable_entity
    end
  end  
  private

  def user_params
    params.require(:user).permit(:email)
  end
end
