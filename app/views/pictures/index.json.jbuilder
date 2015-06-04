json.array!(@pictures) do |picture|
  json.extract! picture, :id, :url, :title, :message, :carousel_id
  json.url picture_url(picture, format: :json)
end
