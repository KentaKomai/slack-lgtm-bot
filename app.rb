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
get '/lgtm' do
  JSON.generate(
    text: "",
    username: "LGTM",
    attachments: [
      {
        text: "",
        fallback: "lgtm bot",
        image_url: "http://my-website.com/path/to/image.jpg"
      }
    ]
  )
end

post '/lgtm' do
  JSON.generate(
    text: "",
    username: "LGTM",
    attachments: [
      {
        text: "",
        fallback: "lgtm bot",
        image_url: "http://my-website.com/path/to/image.jpg"
      }
    ]
  )
end
