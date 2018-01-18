require 'open-uri'
require 'nokogiri'
require 'pry'




def get_all_the_urls_of_val_doise_townhalls
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
			arr = []
			
				lien = page.css("p a.lientxt").collect{|z| (arr << ("http://annuaire-des-mairies.com" + z["href"].slice(1..-1)))}
					arr.each do |r|
						page2 = Nokogiri::HTML(open(r))
						mail = page.css("p.Style22").each do |truc|
						
  					puts truc.text if truc.text.include?("@")
					end
			end
			
end
get_all_the_urls_of_val_doise_townhalls