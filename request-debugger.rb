require 'sinatra'
require 'sinatra/multi_route'
require 'json'

route :get, :post, :put, :patch, :delete, :head, :options, '/*' do
  content_type :text
  return JSON.pretty_generate(request.env)
end
