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

post '/lgtm' do
  JSON.generate(
    username: "LGTM",
    attachments: [
      {image_url: "http://my-website.com/path/to/image.jpg"}
    ]
  )
end
