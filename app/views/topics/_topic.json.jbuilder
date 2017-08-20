json.extract! topic, :id, :name, :contents, :picture, :created_at, :updated_at
json.url topic_url(topic, format: :json)
