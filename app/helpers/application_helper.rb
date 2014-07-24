module ApplicationHelper

  def total_followers
    user.friends.count
  end
end
