json.extract! collect, :id, :resident_id, :collected_on, :ammount, :created_at, :updated_at
json.url collect_url(collect, format: :json)
