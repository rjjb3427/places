json.array!(@places) do |place|
  json.extract! place, :id, :name, :location, :author_id
  json.url place_url(place, format: :json)
end
