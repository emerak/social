module ApplicationHelper

  def total_followees
    user.friends.count
  end

  def total_followers
    user.followers
  end

  def current_user_post? post
    current_user != post.user
  end
end
