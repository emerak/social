module UsersHelper

  def following?
    current_user.friends.find_by_following_id(user.id) ? true:false
  end

end
