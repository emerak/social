class Post < ActiveRecord::Base

  belongs_to :user
  has_many   :comments, dependent: :destroy

  validates_presence_of :content

  delegate :email, to: :user, prefix: true
end
