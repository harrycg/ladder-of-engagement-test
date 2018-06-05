require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("https://slack.com/api/chat.postMessage")

request = Net::HTTP::Post.new(uri)
request.content_type = "application/json; charset=UTF-8"
request["Authorization"] = "Bearer ENV['SLACK_APIKEY']"
request.body="{channel:techteam, text:Hope}"

req_options ={
  use_ssl: uri.scheme == "https",
  }

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end



puts response

#response.code
#response.body

  
=begin
require 'nationbuilder'

client = NationBuilder::Client.new('harrycossar', ENV['NATIONBUILDER_APIKEY'], retries: 8)

two_days_ago = Date.today - 2

  puts "Loading donations..."

response = client.call(:donations, :index, limit: 100)
page = NationBuilder::Paginator.new(client, response)

donations = page.body['results']

while page.next?
  donations += page.body['results']
  break unless Date.parse(donations.last['created_at']) >= two_days_ago
  page = page.next
end

  
donations.each do |d|
if d['amount_in_cents'] > 20000
  
    email = d['donor']['email']
  first_name = d['donor']['first_name']
 last_name = d['donor']['last_name']
  amount = d['amount']
  person_id = d['donor']['id']

  
    puts "#{email} donated #{amount}"

else
  email = d['donor']['email']
  first_name = d['donor']['first_name']
 last_name = d['donor']['last_name']
  amount = d['amount']
  person_id = d['donor']['id']
  puts "#{email} LESS THAN 20. the donated #{amount}"
end
end
=end



=begin

if donations['amount_in_cents'] >= 25000
end

response = client.call(:people, :index, limit: 3)

page = NationBuilder::Paginator.new(client, response)

people = []
while page.next?
  people += page.body['results']
  page = page.next
end  


people.each do |person|
  email = person['email']
    first_name = person['first_name']
    last_name = person['last_name']
  id = person['id']
  
    puts "#{email} #{first_name} #{last_name} #{id}"


  params3 = {
 id: "#{id}",
  tagging: {
    tag: "showmethemoney"
  }
  
}
    client.call(:people, :tag_person , params3)

end
=end

=begin
 params = {
  tag: "is:%20awesome%20core%202018"
    
}
response = client.call(:people_tags, :people, filter)
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

=begin
response = client.call(:people, :index)

page = NationBuilder::Paginator.new(client, response)

people = []
while page.next?
  people= page.body['results']
  page = page.next
end


 
people.each do |person|
if person['tags'].include? 'is: community 2018'
if person['tags'].include? 'is: awesome core 2018' 
  
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

=begin
  params2 = {
 id: "#{id}",
  tagging: {
    tag: "test"
  }
  
}
  
  
  client.call(:people, :tag_person , params2)
end
else
people.each do |person|
  
  email = person['email']
    first_name = person['first_name']
    last_name = person['last_name']
  id = person['id']
  
    puts "#{email} #{first_name} #{last_name} #{id}"

  params3 = {
 id: "#{id}",
  tagging: {
    tag: "hellyep"
  }
  
}
    client.call(:people, :tag_person , params3)
end
end
end
=end
