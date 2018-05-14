class UsersController < ApplicationController

  before_action :only_logged_in, only: [:index, :show]

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
  end

  def show
    @user = User.find_by(id: params[:id])
    if current_user != @user
      flash[:alert] = "Accès refusé."
      redirect_to root_path
    end
  end

  private

  def params_user
    params.require(:user).permit(:firstname, :lastname, :email)
  end

  def only_logged_in
    if !logged_in?
      flash[:alert] = "Vous n'êtes pas connecté."
      redirect_to root_path
    end
  end

end
