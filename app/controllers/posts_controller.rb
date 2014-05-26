class PostsController < ApplicationController
	before_action :authenticate!, only: [:new, :create]

	def index
		@posts = Post.published
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.new(post_params)
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