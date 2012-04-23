class PostsController < ApplicationController
  def tag_cloud
    @tags = @post.tag_counts_on(:tags)
  end

  def tag
    @tag_name = params[:id]
    @posts = Post.tagged_with(params[:id]).paginate(:page => params[:page], :per_page => 5)
    render 'tags/show'
  end

  def index
    @posts = Post.paginate(:page => params[:page], :per_page => 5)
    render 'index'
  end
	
  def new
    @post = Post.new
  end
	
  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      redirect_to posts_url, :notice => "Post created!"
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = current_user
    tag_cloud
    @comment = @post.comments.new
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to root_url
  end
end
