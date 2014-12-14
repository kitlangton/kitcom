json.array!(@illustrations) do |illustration|
  json.extract! illustration, :id, :title, :image
  json.url illustration_url(illustration, format: :json)
end
