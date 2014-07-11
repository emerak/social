class PostsController < ApplicationController
  expose(:post, attributes: :post_params)

  def new
  end

  def create
    flash[:warning]= 'Your status cannot be published' unless post.save
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end