require 'spec_helper'

describe "posts/new.html.erb" do

	let(:post) { mock_model("Post").as_null_object.as_new_record }

  	before :each do
    	assign(:post, post)
    	render
  	end

  	it "has post title" do
    	expect(rendered).to have_selector("#post_title")
  	end
  	it "has post body" do
    	expect(rendered).to have_selector("#post_body")
  	end
  	it "has post published" do
    	expect(rendered).to have_selector("#post_published")
  	end
  	it "has submit button" do
    	expect(rendered).to have_selector("input[type='submit']")
  	end

end