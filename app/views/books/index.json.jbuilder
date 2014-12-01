json.array!(@books) do |book|
  json.extract! book, :id, :title, :description, :price, :author, :published_on
  json.url book_url(book, format: :json)
end
