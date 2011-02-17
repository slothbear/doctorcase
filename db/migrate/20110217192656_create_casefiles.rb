class CreateCasefiles < ActiveRecord::Migration
  def self.up
    create_table :casefiles do |t|
      t.string :name
      t.integer :doctor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :casefiles
  end
end
