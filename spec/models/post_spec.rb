require 'spec_helper'

describe Post do
  	let(:post) { Post.new }

	describe "validations" do
    	it { should validate_presence_of(:title) }
    	it { should validate_presence_of(:body) }
    	it { should validate_presence_of(:published) }
  	end

  	it "is an ActiveRecord model" do
    	expect(Post.superclass).to eq(ActiveRecord::Base)
 	end
	it "has title" do
	  	post.title = "title"
	   	expect(post.title).to eq("title")
	end
	it "has body" do
	    post.body = "body"
	    expect(post.body).to eq("body")
	end
	it "has published" do
	    post.published = true
	    expect(post.published).to eq(true)
	end

end