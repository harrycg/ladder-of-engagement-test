require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."
params = {
  person: {
    email: "bob@example.com",
    last_name: "Smith",
    first_name: "Bob"
  }
}

client.call(:people, :create, params)

  puts "HELLO"

