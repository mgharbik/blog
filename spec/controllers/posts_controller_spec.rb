require 'spec_helper'

describe PostsController do

	describe "GET new" do
	    let!(:post) { mock_model("Post").as_new_record }

	    it "assigns post variable to view" do
	        Post.stub(:new).and_return(post)
	        get :new
	        expect(assigns[:post]).to eq(post)
	    end
	    it "renders new template" do
	        get :new
	        expect(response).to render_template :new
	    end
	end
end
