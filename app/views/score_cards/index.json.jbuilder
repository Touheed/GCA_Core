json.array!(@score_cards) do |score_card|
  json.extract! score_card, :id, :round_id, :course_hole_id, :round_group_member_id, :handicap_index, :score, :putts, :fairway_hits, :created_by, :created_date, :updated_by, :updated_date
  json.url score_card_url(score_card, format: :json)
end
