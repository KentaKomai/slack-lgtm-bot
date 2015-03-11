require 'sinatra'
require 'json'
require 'open-uri'
require 'nokogiri'

get '/' do
  charset = nil
  url = 'http://www.lgtm.in/g'
  html = open(url) do |f|
    charset = f.charset
    f.read
  end
  doc = Nokogiri::HTML.parse(html,nil,charset)
  p "-------"
  d = doc.xpath('//input[@id="imageUrl"]').first
  p d['value'].to_s
  'hello'
end

post '/' do
  charset = nil
  url = 'http://www.lgtm.in/g'
  html = open(url) do |f|
    charset = f.charset
    f.read
  end
  doc = Nokogiri::HTML.parse(html,nil,charset)
  d = doc.xpath('//input[@id="imageUrl"]').first
  lgtmUrl = d['value'].to_s
  {
    :text => "L G T M",
    :username => "L G T M",
    :attachments => [{
      :text => "",
      :image_url => lgtmUrl
    }],
    :icon_image => "http://res.cloudinary.com/hrscywv4p/image/upload/c_limit,h_540,w_720/tsjkqrdmdgfbuatbqklv.png"
  }.to_json
end
