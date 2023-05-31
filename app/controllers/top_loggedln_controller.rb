class TopLoggedlnController < ApplicationController
  def new
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
end
