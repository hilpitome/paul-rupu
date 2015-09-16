json.array!(@deals) do |deal|
  json.extract! deal, :id, :title, :price, :description, :image_url
  json.url deal_url(deal, format: :json)
end
