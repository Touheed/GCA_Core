json.array!(@rounds) do |round|
  json.extract! round, :id, :score_card_type_id, :created_by, :created_date, :updated_by, :updated_date
  json.url round_url(round, format: :json)
end
