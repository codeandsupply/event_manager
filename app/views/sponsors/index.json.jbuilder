json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :name, :description, :link, :is_current, :is_future, :user_id
  json.url sponsor_url(sponsor, format: :json)
end
