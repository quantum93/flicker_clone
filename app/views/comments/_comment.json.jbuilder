json.extract! comment, :id, :photo_title, :body, :comment_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
