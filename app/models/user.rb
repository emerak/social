class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :friends,         foreign_key: 'follower_id'
  has_many :inverse_friends, foreign_key: 'following_id', class: 'Friends'
  has_many :followings, through: :friends, source: :following
  has_many :followers,  through: :inverse_friends, source: :followers

end
