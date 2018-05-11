require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."

  response = client.call(:people, :index)


paginated = NationBuilder::Paginator.new(client, response)

 people = paginated.body["results"]

people.each do |person|
    email = person['email']
    first_name = person['first_name']
    last_name = person['last_name']
  id = person['id']

  
    puts "#{email} #{first_name} #{last_name} #{id}"


  
params = {
id: "#{id}",
  tagging: {
    tag: "is: community 2018"
  }
  
}

  client.call(:people, :tag_removal , params)
  
end
