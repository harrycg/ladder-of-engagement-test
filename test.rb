require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
  client.call(:people, :tag_person , id: 15)


  puts "HELLO"

