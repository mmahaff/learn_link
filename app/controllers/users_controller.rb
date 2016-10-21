class UsersController < ApplicationController
  before_action :authorize_user, except: [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    if @user.save
      redirect_to @user
    else

      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :is_student, :city, :state, :location)
  end

  protected

  def authorize_user
    if !user_signed_in?
      raise ActionController::RoutingError.new("You must be logged in to view this page!")
    end
  end

end
