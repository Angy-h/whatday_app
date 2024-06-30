class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end

    @days_info = DaysInfo.find_by(date: Date.today.strftime("%Y-%m-%d"))
  end

  def news
  end

  def about
  end

  def contact
  end
end
