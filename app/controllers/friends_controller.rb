class FriendsController < ApplicationController
  expose(:user)

  def create
    current_user.follow user
    redirect_to user_path(user)
  end

  def destroy
    current_user.unfollow user
    redirect_to user_path(user)
  end
end
