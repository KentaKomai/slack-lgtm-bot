require 'sinatra'
require 'json'

get '/' do
  'hello'
end

post '/' do
  JSON.generate({
    username: "LGTM",
    text:"< HELLO"
  })
end
