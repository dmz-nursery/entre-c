class Follow < ActiveRecord::Base
  attr_accessible :followee, :follower

  belongs_to :follower,	:class_name => "User", :foreign_key => 'follower'
  belongs_to :followee,	:class_name => "User", :foreign_key => 'followee'
end