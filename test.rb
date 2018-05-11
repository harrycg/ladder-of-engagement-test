require 'nationbuilder'

client = NationBuilder::Client.new('aycc', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  
  client.raw_call("/people/#14/taggings", "put", {"tagging": {"tag": ["harry_test_cleanup2"]}})
  