class AddWattsToRadios < ActiveRecord::Migration
  def self.up
    add_column :radios, :watts, :integer
  end

  def self.down
    remove_column :radios, :watts
  end
end
