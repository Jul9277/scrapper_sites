require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def currencies(price)

	array =[] 
	page = Nokogiri::HTML(open(price))
	prix =page.xpath("//a[@class=\"price\"]").each do |alright|
		array << {name:alright[:href], price:alright.text}
	end
	return array
end


price = "https://coinmarketcap.com/all/views/all/"
currencies(price).each do |currencie|
puts " " + currencie[:name] + "    prix : " + currencie[:price]
end