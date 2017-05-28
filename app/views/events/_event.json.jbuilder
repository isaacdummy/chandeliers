json.extract! event, :id, :killer_id, :victim_id, :event_type, :off_ceiling, :created_at, :updated_at
json.url event_url(event, format: :json)
