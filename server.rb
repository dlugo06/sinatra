require 'sinatra'
require 'httparty'
require 'nokogiri'

get '/' do
  # File.read(File.join('public', 'index.html'))

  request_url = "http://finance.yahoo.com/q?s=AAPL"
  response = HTTParty.get(request_url)
  dom = Nokogiri::HTML(response.body)


  ["Today's price for AAPL is $", dom.xpath("//span[@id='yfs_l84_aapl']").first.content]
end
#
# get '/this' do
#   "Hello World"
# end
#
# get '/sinatra' do
#   "Hello Sinatra"
# end
#
# get '/jacqui' do
#   "Hello Jacqui"
# end
