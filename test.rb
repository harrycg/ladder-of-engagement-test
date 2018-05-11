require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
params = {

  tag_person: {
    tag: "is: community 2018"
  },
  person: {
    id: 15
    }
  
}

  client.call(:people, :tag_person , params, id: 15)

  puts "HELLO"

