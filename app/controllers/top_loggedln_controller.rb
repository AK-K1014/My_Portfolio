class TopLoggedlnController < ApplicationController
  def edit
    print "こんにちは"
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
  
  def new
    @user = current_user
  end

  def create
    @user = current_user
    @user.update(user_params)
    session[:user_id] = @user.id
    binding.pry
    redirect_to top_loggedln_url
  end

  # def update
  #   @user = current_user
  #   @user.update(params.require(:user).permit(:deescription, :image))
  #   redirect_to top_loggedln_path
  # end

  private

  def user_params
    # binding.pry
    params.require(:user).permit(:description, :image)
  end
end
