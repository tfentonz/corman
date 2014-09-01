json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :date, :description
  json.url meeting_url(meeting, format: :json)
end
