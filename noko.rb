
require 'open-uri'
require 'nokogiri'

def get_the_email_of_a_townhal_from_its_webpage

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
	mail = page.css("p.Style22").each do |truc|
  puts truc.text if truc.text.include?("@")
	end
end
get_the_email_of_a_townhal_from_its_webpage

#page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html")) # j'ouvre la page web
#mail = page.css("p.Style22").each { |a| puts a.text if a.text.include?("@") }

