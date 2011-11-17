class NokogiriController < ApplicationController
  
  require 'nokogiri'
  require 'open-uri'
  require 'typhoeus'
  
  def index

    
    
    
    
    # Get a Nokogiri::HTML:Document for the page we’re interested in...

    fetch = open("http://api.wefeelfine.org:8080/ShowFeelings?display=xml&returnfields=sentence,state&limit=50").read
    @doc = Nokogiri::XML(fetch)
    
    @sentence = @doc.xpath("//feelings//@sentence")
    @state = @doc.xpath("//feelings//@state")
    @result = "#{@sentence}--#{@state}"


    # Do funky things with it using Nokogiri::XML::Node methods...

    ####
   
  end
end
