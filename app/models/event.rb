class Event < ActiveRecord::Base
  belongs_to :series
  belongs_to :venue
end
