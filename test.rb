require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
  client.call("/people/:15/taggings", "put", {"tagging": {"tag": ["is: community 2018"]}})

  puts "HELLO"

