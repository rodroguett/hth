json.array!(@sale_processes) do |sale_process|
  json.extract! sale_process, :id, :name, :description
  json.url sale_process_url(sale_process, format: :json)
end
