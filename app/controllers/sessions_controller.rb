class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id

      if Note.find_by(user_id: session[:user_id]) == nil
        redirect_to '/note/new'
      else
        redirect_to root_path
      end
      
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
