require 'nokogiri'
require 'open-uri'

def web
x = URI.open('https://coinmarketcap.com/all/views/all/').read

page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
end






def html

  x = URI.open('https://coinmarketcap.com/all/views/all/').read

  page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))

bitcoin = page.xpath('//tr//td[3]')
crypto = page.xpath('//tr//td[4]')

 #bitcoin.map{|bitcoin_list| bitcoin << (bitcoin_list.text)}
#crypto.map{|crypto_list| crypto << (crypto_list.text[1..-1].tr('$', '').to_f)}   
           
tab = []
tab2 = []
bitcoin.each do |za|
   tab << za.text
end

crypto.each do |za|
     tab2 << za.text
  end
  together= Hash[tab.zip(tab2)]
  
  return  puts together
end


   



html




































# bitcoin.map{|bitcoin_list| bitcoin << (bitcoin_list.text)}
#crypto.map{|crypto_list| crypto << (crypto_list.text[1..-1].tr('$', '').to_f)}            

#all_cryptos_names = page.xpath('//tr//td[3]')
#all_cryptos_values = page.xpath('//tr//td[5]')
 
=begin
bitcoin = page.xpath('//tr//td[3]')
crypto = page.xpath('//tr//td[5]')
bitcoin_ = Array.new  
crypto_ = Array.new
together = Hash.new
bitcoin.map { |bitcoin_list| bitcoin_ << (bitcoin_list.text) }
crypto.map { |crypto_list| crypto_ << (crypto_list.text[1..-1].tr(',', '').to_f)}            

bitcoin.each do |la|
    bitcoin_ << la
  end

crypto.each do |la|
    crypto_ << la
  end
  
  puts   together = Hash[bitcoin_.zip(crypto_)]
=end