json.array!(@carousels) do |carousel|
  json.extract! carousel, :id, :url, :title, :message
  json.url carousel_url(carousel, format: :json)
end
