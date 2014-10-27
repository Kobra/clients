json.array!(@clients) do |client|
  json.extract! client, :id, :uid, :contract, :companyname, :address, :comments, :contacts, :phones, :email
  json.url client_url(client, format: :json)
end
