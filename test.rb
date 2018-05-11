require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."

  client.raw_call("/people/#14/taggings", "put", {"tagging": {"tag": ["harry_test_cleanup2"]}})
  
