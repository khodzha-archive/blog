class Post < ActiveRecord::Base
	attr_accessible :title, :content, :tag_list

  acts_as_taggable_on :tags

	validates_presence_of :title
	validates_presence_of :content
	validates_presence_of :user_id

	belongs_to :user
	has_many :comments, :dependent => :destroy

end
