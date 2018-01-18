require 'open-uri'
require 'nokogiri'
require 'pry'

def trad

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
lien = page.css('a.currency-name-container').collect {|x| x['href'].split("/")[2]}
val = page.css('a.price').collect {|y| y['data-usd']}
res = Hash[lien.zip val]
puts res
end
trad


#.zip