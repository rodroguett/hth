json.array!(@dispatches) do |dispatch|
  json.extract! dispatch, :id, :electronic_dispatch, :dispatch_ticket, :dispatch_date
  json.url dispatch_url(dispatch, format: :json)
end