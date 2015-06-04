json.array!(@garments) do |garment|
  json.extract! garment, :id, :name, :kind, :description, :price, :size_id, :collection_id
  json.url garment_url(garment, format: :json)
end
