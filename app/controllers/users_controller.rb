class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
      if @user.save
        redirect_to root
      else
        flash.now[:danger] = "Veuillez remplir tous les champs."
        render "new"
      end
  end

  private

  def params_user
    params.require(:user).permit(:firstname, :lastname, :email)
  end



end
