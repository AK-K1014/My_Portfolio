module TopLoggedlnHelper
  #現在のユーザーをログアウトする
  def log_out
    reset_session
    @current_user = nil
  end
end
