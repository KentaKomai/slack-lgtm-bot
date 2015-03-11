require 'sinatra'
require 'json'

get '/' do
  'hello'
end

post '/' do
  {
    :text => "LGTM",
    :username => "LGTM",
    :attachments => [{
      :text => "",
      :image_url => "http://res.cloudinary.com/hrscywv4p/image/upload/c_limit,h_540,w_720/tsjkqrdmdgfbuatbqklv.png"
    }]
  }.to_json
end
