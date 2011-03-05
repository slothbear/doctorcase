class AddRatingTagToCasefile < ActiveRecord::Migration
  def self.up
    add_column :casefiles, :rating_tag, :integer
  end

  def self.down
    remove_column :casefiles, :rating_tag
  end
end
