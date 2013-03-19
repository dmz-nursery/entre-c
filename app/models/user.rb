class User < ActiveRecord::Base
  attr_accessible :email, :name

    validates :name, 	:presence => true
    validates :email, 	:format => { :with => /\w+@\w+.com/, 
    								 :message => "Invalid email format" }

    has_many :statuses

    def how_many_statuses?
    	return self.statuses.count
    end

    def avg_word_size
    	char_count = 0
    	word_count = 0
    	s = self.statuses
    	s.each do |status|
    		char_count += status.status.length 
    		word_count += status.status.split(' ').count
    	end
    	return char_count / word_count if word_count != 0
    end

    def self.most_popular
    	u = User.all
    end	
end