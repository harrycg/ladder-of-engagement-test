require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
params = {
  tagging: {
    tag: "is: community 201",
  }
}

  client.call(:people, :tag_person , params)

  puts "HELLO"

