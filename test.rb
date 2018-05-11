require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
  client.raw_call("/api/v1/people/:15/taggings", "put", {"tagging": {"tag": "is: community 2018"}})

  puts "HELLO"

