json.extract! book, :id, :title, :summary, :virtual, :created_at, :updated_at
json.url book_url(book, format: :json)
