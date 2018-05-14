class SessionsController < ApplicationController

  def new
  end

  def create
    if User.ids.include?(params[:session][:id])
     user = User.find(params[:session][:id])
      if user
        log_in user
        redirect_to root
      end
    else
      flash.now[:danger] = "ID inconnue"
      render 'new'
    end
  end

  def destroy
   log_out
   redirect_to root_url
  end

end
