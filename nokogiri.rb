require 'rubygems'
require 'nokogiri'
#require 'restclient'
require 'open-uri'
require 'pry'
	
#extraire des liens de résultats de recherche d'une recherche Google
	doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))
	doc.xpath('//h3/a').each do |node|
	  puts node.text
	end
#puts page.class   # => Nokogiri::HTML::Document

#page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))   
#puts page.class   # => Nokogiri::HTML::Document


