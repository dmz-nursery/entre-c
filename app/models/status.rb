class Status < ActiveRecord::Base
  attr_accessible :geocode, :image_url, :status

  validates :status, 	:presence => true
  validates :image_url, :format => { :with => /http:\/\/www.\w+.com/, 
  									 :message => "Invalid url"  }

  belongs_to :user
  has_and_belongs_to_many :tags
end