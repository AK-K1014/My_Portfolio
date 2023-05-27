class SessionsController < ApplicationController
  def login
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to @top_loggedln
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'login', status: :unprocessable_entity
    end
  end

  def destroy
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
  end
end
