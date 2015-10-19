require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/20/contacts.json',
  ).to_s

puts RestClient.get(url)

puts
puts

def create_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts.json'
  ).to_s

  puts RestClient.post(
    url,
    { contact: { name: "Gizmo", email: "gizmo@gizmo.gizmo", user_id: 1 } }
  )
end

# create_contact

def destroy_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/33.json'
  ).to_s

  puts RestClient.delete(
    url,
    { contact: { name: "Gizmo", email: "gizmo@gizmo.gizmo", user_id: 1 } }
  )
end

# destroy_contact

def update_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/32.json'
  ).to_s

  puts RestClient.patch(
    url,
    { contact: { name: "Ben", email: "BennyBennassi@thebiz.com" } }
  )
end

# update_contact

def show_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/18.json',
    ).to_s

  puts RestClient.get(url)
end

# show_contact

# show_user
# update_user
