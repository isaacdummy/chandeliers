class AddWeightToEventTypes < ActiveRecord::Migration
  def change
    add_column :event_types, :weight, :decimal, precision: 10, scale: 2
  end
end
