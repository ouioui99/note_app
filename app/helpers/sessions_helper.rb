module SessionsHelper

  # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end

  
  def current_user
    #もしセッションにuser_idが入って
    if session[:user_id]
      #@current_userがnilかfalseの時のみ値(sessionのuser_idのidを持つオブジェクト)を入れる　つまりこのコードでは中身が更新されることはない
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

 #userがログインしているかどうかのチェック '!'は否定演算子なのでnilの場合falseを出す
  def logged_in?
    !current_user.nil?
  end



end
