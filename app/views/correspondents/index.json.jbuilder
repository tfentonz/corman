json.array!(@correspondents) do |correspondent|
  json.extract! correspondent, :id, :name, :street, :town, :state, :postcode, :description
  json.url correspondent_url(correspondent, format: :json)
end
