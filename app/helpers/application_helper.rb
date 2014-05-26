module ApplicationHelper

	def top_menu
	    result = content_tag(:nav, class: "blog-nav") do
	    	items = link_to "Home", root_path, class: "blog-nav-item"
	    
		    if current_user
		        items += link_to "New post", new_post_url, class: "blog-nav-item"
		        items += link_to "Welcome, #{current_user.email}", root_url, class: "blog-nav-item pull-right"
		        items += link_to "Logout", destroy_user_session_path, :method => :delete, class: "blog-nav-item pull-right"
		    else
		        items += link_to "Sign in", new_user_session_path, class: "blog-nav-item pull-right"
		        items += link_to "Register", new_user_registration_path, class: "blog-nav-item pull-right"
		    end
		    items
	    end
	    result
  	end

end
