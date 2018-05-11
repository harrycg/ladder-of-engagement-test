require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."

response = client.call(:people, :index)

paginated = NationBuilder::Paginator.new(client, response)
page1 = paginated
page2 = page1.next
page3 = page2.next

