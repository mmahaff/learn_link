class HomeController < ApplicationController
  def index
  end

  def index
    if user_signed_in?
      params[:page] = 1 if params[:page].nil?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end
