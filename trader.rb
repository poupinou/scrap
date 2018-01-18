require 'open-uri'
require 'nokogiri'
require 'pry'

def trad
#ouvre la page
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
#recupere les noms
lien = page.css('a.currency-name-container').collect {|x| x['href'].split("/")[2]}
#recupere la valeur
val = page.css('a.price').collect {|y| y['data-usd']}
#regroupe tout ensemble
res = Hash[lien.zip val]
#tu peut mettre une monnaie en parametre si tu veux 
puts res
end
trad


