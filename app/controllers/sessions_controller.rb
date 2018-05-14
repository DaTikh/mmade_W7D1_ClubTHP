class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    if User.find_by_id(params[:session][:id])
     user = User.find(params[:session][:id])
      if user
        log_in user
        redirect_to root_path
      end
    else
      flash.now[:alert] = "ID inconnue"
      render "new"
    end
  end

  def destroy
   log_out
   redirect_to root_url
  end

end
