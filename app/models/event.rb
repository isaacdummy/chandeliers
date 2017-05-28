class Event < ActiveRecord::Base
  belongs_to :killer, class_name: 'Person'
  belongs_to :victim, class_name: 'Person'
  belongs_to :event_type

  delegate :image_path, to: :event_type
end
