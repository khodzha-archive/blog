class Comment < ActiveRecord::Base
	attr_accessible :content, :user_id

	validates_presence_of :content, :on => :create

	belongs_to :user
	belongs_to :post
end
