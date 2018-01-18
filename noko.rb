
require 'open-uri'
require 'nokogiri'

def get_the_email_of_a_townhal_from_its_webpage
	#ouvre la page
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
	#cherche le style22
	mail = page.css("p.Style22").each do |truc|
  #ne garde que les phrase avec arobase (les adresses mail quoi)
  puts truc.text if truc.text.include?("@")
	end
end
get_the_email_of_a_townhal_from_its_webpage

#page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html")) # j'ouvre la page web
#mail = page.css("p.Style22").each { |a| puts a.text if a.text.include?("@") }

