class User < ActiveRecord::Base
  attr_accessible :email, :name

	validates :name, 	:presence => true
    	validates :email, 	:format => { :with => /\w+@\w+.com/ }

    	has_many 	:follows

	has_and_belongs_to_many(:followers,
				:class_name => "User",
                                :join_table => "follows",
                                :foreign_key => "followee",
                                :association_foreign_key => "follower")
	
	has_and_belongs_to_many(:followees,
				:class_name => "User",
                                :join_table => "follows",
                                :foreign_key => "follower",
                                :association_foreign_key => "followee")
	
    	has_many 	:statuses, 
    			:dependent => :destroy		

    	def how_many_statuses?
    		return self.statuses.count
    	end

    	def self.most_popular
    	end

    	def followers
    		User.joins(:follows).where(:followee => self.id)
    	end	
end
