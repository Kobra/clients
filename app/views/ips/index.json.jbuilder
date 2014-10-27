json.array!(@ips) do |ip|
  json.extract! ip, :id, :client_id, :uid, :p2p, :net, :comments
  json.url ip_url(ip, format: :json)
end
