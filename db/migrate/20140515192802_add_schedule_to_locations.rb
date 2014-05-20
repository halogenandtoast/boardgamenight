class AddScheduleToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :recurrence_rules, :text
    add_column :locations, :starts_on, :date
  end
end
