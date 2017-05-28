class AddImagePathToEventType < ActiveRecord::Migration
  def change
    add_column :event_types, :image_path, :string
  end
end
