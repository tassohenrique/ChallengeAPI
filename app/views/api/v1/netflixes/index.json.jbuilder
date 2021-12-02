json.array! @netflixes do |netflix|
  json.extract! netflix, :id, :title, :genre, :year, :country, :published_at, :description
end
