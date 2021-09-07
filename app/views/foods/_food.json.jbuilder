json.extract! food, :id, :name, :category, :availability, :price, :created_at, :updated_at, :image
json.url food_url(food, format: :json)
