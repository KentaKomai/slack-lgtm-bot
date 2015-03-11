require 'sinatra'
require 'json'

get '/' do
  'hello'
end

post '/' do
  JSON.generate({text:"< HELLO"})
end
