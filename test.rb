require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

  puts "Loading donations..."

=begin
 params = {
  tag: "is:%20awesome%20core%202018"
    
}

response = client.call(:people_tags, :people, params)
paginated = NationBuilder::Paginator.new(client, response)
page1 = paginated
page2 = page1.next
page3 = page2.next

 people = paginated.body["results"]

 
people.each do |person|
  
  email = person['email']
    first_name = person['first_name']
    last_name = person['last_name']
  id = person['id']
  
    puts "#{email} #{first_name} #{last_name} #{id}"

end
=end
response = client.call(:people, :index, limit: 100)


paginated = NationBuilder::Paginator.new(client, response)

 people = paginated.body["results"]

 
people.each do |person|
if person['tags'].include? 'is: awesome core 2018' && 'is: community 2018'

  
  email = person['email']
    first_name = person['first_name']
    last_name = person['last_name']
  id = person['id']
  
    puts "#{email} #{first_name} #{last_name} #{id}"


=begin
 params = {
 id: "#{id}",
  tagging: {
    tag: "is: awesome core 2018"
  }
  
}
  client.call(:people, :bulk_tag_removal , params)

=end
  
  params2 = {
    tag: "test"
  }
  
  
  client.call(:people, :add , params2)

else
  puts "almost there"
end

  
end
