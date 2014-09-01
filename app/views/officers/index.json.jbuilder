json.array!(@officers) do |officer|
  json.extract! officer, :id, :name, :email, :mygroup, :isgroup
  json.url officer_url(officer, format: :json)
end
