json.extract! imgpost, :id, :title, :content, :created_at, :updated_at
json.url imgpost_url(imgpost, format: :json)
