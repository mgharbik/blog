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

	describe "POST create" do
 	    let(:post) { stub_model(Post).as_null_object }   
	    let(:params) do
	      {
	        "title" => "title",
	        "body" => "body",
	        "published" => true
	      }
	    end

	    before :each do
	        Post.stub(:new).and_return(post)
	    end

	    #it "sends new message with params to post model" do
	    #    Post.should_receive(:new).with(params)
	    #    post :create, post: params
	    #end
	    #it "sends save message to post model" do
	    #    post.should_receive(:save)
	    #    post :create, post: params
	    #end

	    #context "when valid data" do
	    #    before :each do
	    #      	post.stub(:save).and_return(true)
	    #    end
	    #    it "redirects to home page" do
		#        post :create, post: params
		#		expect(response).to redirect_to root_url
	    #    end
	    #    it "assign flash[:notice]" do
	    #    	post :create, post: params
	    #      	expect(flash[:notice]).not_to be_nil
	    #    end
	    #end
	    
    end

end
