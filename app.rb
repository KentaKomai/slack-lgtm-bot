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
  content_type :json
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
  content_type :json
  JSON.generate(
    text:":star2:ガチャっと",
    username:"パズドラガチャ",
    attachments:[{
      text:"",
      image_url:"https://www.googledrive.com/host/0B-ODBm7gVpU3fmdfYkxmOHZ3UV84a0o4UjI0dkdVY3BjQXA3NWFHS0VsMHdYZ0Jqa1RjNjA/MONS_1578.PNG"
    }],
    icon_url:"https://www.googledrive.com/host/0B-ODBm7gVpU3fjlLQjZrM2lBQkRuTjR5VUU0UUpQSmx1UGdIZEl0eXdxQnFQczB0TmRwY0E/gacha.png"
  )
end
get '/gacha' do
  content_type :json
  JSON.generate(
    text:":star2:ガチャっと",
    username:"パズドラガチャ",
    attachments:[{
      text:"",
      image_url:"https://www.googledrive.com/host/0B-ODBm7gVpU3fmdfYkxmOHZ3UV84a0o4UjI0dkdVY3BjQXA3NWFHS0VsMHdYZ0Jqa1RjNjA/MONS_1578.PNG"
    }],
    icon_url:"https://www.googledrive.com/host/0B-ODBm7gVpU3fjlLQjZrM2lBQkRuTjR5VUU0UUpQSmx1UGdIZEl0eXdxQnFQczB0TmRwY0E/gacha.png"
  )
end

post '/gacha' do
  content_type :json
  JSON.generate(
    text:"",
    username:"LGTM",
    attachments:[{
      text:"",
      image_url:"https://www.googledrive.com/host/0B-ODBm7gVpU3fmdfYkxmOHZ3UV84a0o4UjI0dkdVY3BjQXA3NWFHS0VsMHdYZ0Jqa1RjNjA/MONS_1578.PNG"
    }],
    icon_url:"https://www.googledrive.com/host/0B-ODBm7gVpU3fjlLQjZrM2lBQkRuTjR5VUU0UUpQSmx1UGdIZEl0eXdxQnFQczB0TmRwY0E/gacha.png"
  )
end



