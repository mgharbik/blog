class PostsController < ApplicationController

	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
	    if @post.save
	    	redirect_to root_path, notice: "Post was created successfully"	
	    else
	    	render 'new'
	    	flash[:error] = "Title and body should not be empty"
	    end
	end

	private
	def post_params
		params.require(:post).permit(:title, :body, :published)
	end

end