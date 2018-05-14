class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
      if @user.save
        log_in @user
        redirect_to root_path
      else
        flash.now[:alert] = @user.errors.full_messages.join("")
        render "new"
      end
  end

  def index
    if !logged_in?
      flash[:alert] = "Vous n'êtes pas connecté."
      redirect_to root_path
    end
  end

  private

  def params_user
    params.require(:user).permit(:firstname, :lastname, :email)
  end



end
