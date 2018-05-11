require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
  client.call(:people, :put {"tagging": {"tag": "is: community 2018"}}, id: 15)


  puts "HELLO"

