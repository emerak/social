class PostsController < ApplicationController
  expose(:post, attributes: :post_params)

  def new
  end

  def create
    post.user_id = current_user.id
    flash[:warning]= 'Your status cannot be published' unless post.save
    redirect_to root_path
  end

  def destroy
    post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
