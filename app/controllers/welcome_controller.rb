class WelcomeController < ApplicationController
  expose(:post)
  expose(:publications) { current_user.followings_posts }
  expose(:user)         { current_user }
  expose(:new_users)    { User.limit(5) }
  expose(:comment)

  def index
  end
end
