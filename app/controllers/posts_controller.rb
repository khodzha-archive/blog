class PostsController < ApplicationController
	def index
		@posts = Post.all
		render 'index'
	end
	
	def new
		@post = Post.new
	end
	
	def create
		@post = current_user.posts.build(params[:post])
		if @post.save
			redirect_to root_url, :notice => "Post created!"
		else
			render 'new'
		end
	end

#	def view
#	end

	def destroy
	end
end
