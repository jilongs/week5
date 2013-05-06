class Venue < ActiveRecord::Base
  attr_accessible :address, :name
  has_many :venues
  validates_presence_of :name
end
