require 'open-uri'
require 'nokogiri'
require 'pry'




def get_all_the_urls_of_val_doise_townhalls
	#ouvre la page
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
			arr = []
				#recupere les liens
				lien = page.css("p a.lientxt").collect{|z| (arr << ("http://annuaire-des-mairies.com" + z["href"].slice(1..-1)))}
					#ouvre les liens
					arr.each do |r|
						page2 = Nokogiri::HTML(open(r))
						#recupere les adresse mails
						mail = page.css("p.Style22").each do |truc|
							puts truc.text if truc.text.include?("@")
					end
			end
			
end
get_all_the_urls_of_val_doise_townhalls