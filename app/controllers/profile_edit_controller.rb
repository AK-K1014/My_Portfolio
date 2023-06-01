class ProfileEditController < ApplicationController
  def edit
  end

  def new
    @user = User.first
  end

  def create
    @user = current_user
    @user.update(user_params)
    session[:user_id] = @user.id
    redirect_to top_loggedln_path
  end

  # def update
  #   @user = User.first 
  #   @user = @user.update params.require(:user).permit(:content, :image)
  #   redirect_to @user
  # end

  private

  def user_params
    params.permit(:description, :image)
  end
end
