class WelcomeController < ApplicationController
  expose(:post)
  expose(:publications) { current_user.followings_posts }

  def index
  end
end
