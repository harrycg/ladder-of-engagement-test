require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."

  response = client.call(:people_tags, :index)


paginated = NationBuilder::Paginator.new(client, response)

  puts "Send upsell email to #{name} <#{email}>"





