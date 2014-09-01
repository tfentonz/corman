json.array!(@correspondences) do |correspondence|
  json.extract! correspondence, :id, :file_id, :folio_id, :folio_date, :review_date, :meeting_id, :reference, :officer_id, :correspondent_id, :type_id, :summary, :details, :linkto, :linkfrom, :note_count
  json.url correspondence_url(correspondence, format: :json)
end
