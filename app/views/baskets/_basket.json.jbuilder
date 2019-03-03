json.extract! basket, :id, :quantity, :created_at, :updated_at
json.url basket_url(basket, format: :json)
