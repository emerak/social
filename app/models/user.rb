class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :friends, foreign_key: 'follower_id', dependent: :destroy

  def follow user
    friends.create(following_id: user.id)
  end

  def unfollow user
    friends.find_by_following_id(user.id).destroy
  end

  def followings_posts
    friends_ids = friends.pluck(:following_id) << id
    Post.where(user_id: friends_ids).order('created_at desc')
  end

end
