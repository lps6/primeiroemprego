json.extract! user_quest, :id, :quest_id, :created_at, :updated_at
json.url user_quest_url(user_quest, format: :json)
