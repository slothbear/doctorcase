class CreateRadios < ActiveRecord::Migration
  def self.up
    create_table :radios do |t|
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :radios
  end
end
