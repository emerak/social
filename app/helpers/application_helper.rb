module ApplicationHelper

  def total_followers
    user.friends.count
  end

  def current_user_post? post
    current_user != post.user
  end
end
