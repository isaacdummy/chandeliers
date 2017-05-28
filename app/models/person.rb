class Person < ActiveRecord::Base
  def to_s
    name
  end

  def victim_events
    Event.where(victim_id: self.id).joins(:event_type).where("event_types.description <> 'Shot'")
  end

  def first_initial
    name[0]
  end
end
