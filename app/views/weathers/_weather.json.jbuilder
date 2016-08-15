json.extract! weather, :id, :location, :sensor, :humidity, :temperature, :created_at, :updated_at
json.url weather_url(weather, format: :json)