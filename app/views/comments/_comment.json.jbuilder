json.extract! comment, :id, :name, :type, :body, :parent, :activityid, :created_at, :updated_at
json.url comment_url(comment, format: :json)
