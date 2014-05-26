class Post < ActiveRecord::Base
	validates_presence_of :title, :body
	belongs_to :user
	scope :published, lambda { where('posts.published is ?', true) }
	default_scope lambda { order('posts.created_at DESC') }
end