module SessionsHelper
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

 #userがログインしているかどうかのチェック '!'は否定演算子なのでnilの場合falseを出す
  def logged_in?
    !current_user.nil?
  end

end
