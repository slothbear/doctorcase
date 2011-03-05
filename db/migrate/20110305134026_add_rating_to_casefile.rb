class AddRatingToCasefile < ActiveRecord::Migration
  def self.up
    add_column :casefiles, :rating, :integer
  end

  def self.down
    remove_column :casefiles, :rating
  end
end
