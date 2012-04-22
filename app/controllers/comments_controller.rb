class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
		post = Post.find(params[:post_id])
    @comment = post.comments.build(params[:comment])
		@comment.user_id = (!current_user.nil?) ? current_user.id : nil
    if @comment.save
      redirect_to post#show
    else
    end
  end
end
