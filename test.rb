require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
params = {
id: 15,
  tag_person: {
    tag: "is: community 2018"
  }
  
}

  client.call(:people, :tag_person , params)

  puts "HELLO"

