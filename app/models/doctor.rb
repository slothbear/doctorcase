class Doctor < ActiveRecord::Base
  has_many :casefiles
end
