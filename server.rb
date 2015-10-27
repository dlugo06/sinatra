require 'sinatra'
require 'httparty'
require 'nokogiri'

get '/' do
  File.read(File.join('public', 'hello.txt'))
end

get '/stock' do
  request_url = "http://finance.yahoo.com/q?s=AAPL"
  response = HTTParty.get(request_url)
  dom = Nokogiri::HTML(response.body)

  a = dom.xpath("//span[@id='yfs_l84_aapl']").first.content
  "Today's price for AAPL is $#{a}"
end
