json.array!(@sales) do |sale|
  json.extract! sale, :id, :price, :sale_note, :purchase_order
  json.url sale_url(sale, format: :json)
end