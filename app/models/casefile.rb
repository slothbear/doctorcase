class Casefile < ActiveRecord::Base
  belongs_to :doctor
  validates_presence_of :name
end
