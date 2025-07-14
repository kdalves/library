json.extract! wishlist, :id, :name, :status, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
