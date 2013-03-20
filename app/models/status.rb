class Status < ActiveRecord::Base
  	attr_accessible :geocode, :image_url, :status

  	validates :status, 	:presence => true
  	validates :image_url, :format => { :with => /http:\/\/www.\w+.com/ }
 
  	belongs_to :user
  	has_and_belongs_to_many :tags

  	has_and_belongs_to_many(:statuses,
    				:join_table => "status_connections",
    				:foreign_key => "status_a_id",
    				:association_foreign_key => "status_b_id")

  	def avg_word_size
    	char_count = self.status.length 
    	word_count = self.status.split(' ').count
    	return char_count / word_count if word_count != 0
    end
end
