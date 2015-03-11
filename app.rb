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
    text:"LGTM",
    username:"LGTM",
    attachments:[{
      text:"",
      image_url:"https://www.googledrive.com/host/0B-ODBm7gVpU3fmdfYkxmOHZ3UV84a0o4UjI0dkdVY3BjQXA3NWFHS0VsMHdYZ0Jqa1RjNjA/MONS_1578.PNG"
    }]
  )
end
