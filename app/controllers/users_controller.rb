class UsersController < ApplicationController
  before_action :require_user, only: [:destroy]
  def new
    redirect_to root_path if logged_in?
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    if @user.save
      AppMailer.send_welcome_mail(@user).deliver
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to register_path
  end
end
