require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."

  response = client.call(:people_tags, :index)


paginated = NationBuilder::Paginator.new(client, response)

 people = paginated["results"]

people.each do |person|
    email = person['email']
    first_name = person['first_name']
    last_name = person['last_name']
  
    puts "#{email} #{first_name} #{last_name}"



end
