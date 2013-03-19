class Tag < ActiveRecord::Base
  attr_accessible :tag

  validates :tag, :presence => true

  has_and_belongs_to_many :statuses 
end