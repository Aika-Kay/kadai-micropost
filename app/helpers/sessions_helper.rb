module SessionsHelper
  # 現在ログインしているユーザを取得するメソッド
  def current_user
    # 下記コードと同意儀
    # if @current_user
    #   return @current_user
    # else
    #   @ccurent_user = User.find_by(id: session[:user_id])
    #   return @current_user
    # end
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
end
