class UsersController < ApplicationController
  expose(:user)
  expose(:posts)   { user.posts }
  expose(:post)
  expose(:comment) { Comment.new }
end
