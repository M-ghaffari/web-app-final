require 'open-uri'
require "rexml/document"
require 'pp'

@xml = open('https://data.city.kyoto.lg.jp/sites/default/files/resource-files/kyoto_publicbathroom.xml').read
# puts @xml

@doc = REXML::Document.new(@xml, :ignore_whitespace_nodes=>:all).elements['//listings']

# XPath の記法でパスを指定する
@doc.each do |elem|
  puts elem
end
