class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save && user_params[:password] == user_params[:password_confirmation]
      log_in @user
      redirect_to '/note/new'
    else
      redirect_to '/logon'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end



  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
