class Post < ActiveRecord::Base
	attr_accessible :title, :content

	validates_presence_of :title
	validates_presence_of :content
	validates_presence_of :user_id

	belongs_to :user
end
