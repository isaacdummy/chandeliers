class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :killer_id
      t.integer :victim_id
      t.integer :event_type_id

      t.timestamps null: false
    end
  end
end
