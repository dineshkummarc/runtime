class ReleaseDatetimeToDate < ActiveRecord::Migration
  def self.up
    change_column :releases, :release_date, :date
  end

  def self.down
    change_column :releases, :release_date, :datetime
  end
end
