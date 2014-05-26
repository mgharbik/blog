module PostsHelper

	def posts_listing_items(posts)
		content_tag(:div, :class => 'col-sm-8 blog-main') do
	    	render posts
		end
	end

	def post_title_item(post)
		content_tag(:h2, :class => 'blog-post-title') do
	    	post.title.html_safe
		end
	end

	def post_date_item(post)
		content_tag(:p, :class => 'blog-post-meta') do
	    	post.created_at.to_formatted_s(:long) + " by #{post.user.email}"
		end
	end
end