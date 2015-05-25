json.array!(@score_card_types) do |score_card_type|
  json.extract! score_card_type, :id, :desc, :created_by, :created_date, :updated_by, :updated_date
  json.url score_card_type_url(score_card_type, format: :json)
end
