json.array!(@accounts) do |account|
  json.extract! account, :id, :transfer, :check, :deposit
  json.url account_url(account, format: :json)
end
