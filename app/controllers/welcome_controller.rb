class WelcomeController < ApplicationController
  expose(:post)
  expose(:news_feed) { current_user.posts }

  def index
  end
end
