class WelcomeController < ApplicationController
  expose(:post)
  expose(:publications) { current_user.posts }

  def index
  end
end
