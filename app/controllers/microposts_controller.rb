class MicropostsController < ApplicationController
  before_action :authorize_user, only: [:create, :destroy]

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      render 'home/index'
    end
  end

  def destroy
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end 

  protected

  def authorize_user
    if !user_signed_in?
      raise ActionController::RoutingError.new("You must be logged in to view this page!")
    end
  end
end
