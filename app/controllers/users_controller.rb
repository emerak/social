class UsersController < ApplicationController
  expose(:user)
  expose(:posts) { user.posts }
end
