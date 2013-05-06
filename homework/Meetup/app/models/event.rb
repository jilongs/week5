class Event < ActiveRecord::Base
  attr_accessible :date, :title, :venue_id
  belongs_to :event
  validates_presence_of :title
  validates_presence_of :date
  validates_presence_of :venue_id
  def venue
  	v = Venue.find_by_id(venue_id)
  	return v.name
  end
end
