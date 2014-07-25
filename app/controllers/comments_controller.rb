class CommentsController < ApplicationController
  expose(:post)
  expose(:comment) { post.comments.build(comments_params)}

  def new
  end

  def create
    comment.user_id = current_user.id
    comment.save
    redirect_to root_path
  end

  private

  def comments_params
    params.require(:comment).permit(:comment)
  end
end


