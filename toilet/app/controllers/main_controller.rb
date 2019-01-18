require 'open-uri'
require "rexml/document"

class MainController < ApplicationController
  def index
    @xml = open('https://data.city.kyoto.lg.jp/sites/default/files/resource-files/kyoto_publicbathroom.xml').read
    @doc = REXML::Document.new(@xml).elements


  end
end
