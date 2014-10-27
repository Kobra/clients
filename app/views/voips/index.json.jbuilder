json.array!(@voips) do |voip|
  json.extract! voip, :id, :client_id, :uid, :gatewayip, :prefix, :number, :line, :restrictions, :gateway, :protocol, :comments
  json.url voip_url(voip, format: :json)
end
