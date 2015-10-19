require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/5.json',
  query_values: {
    'some_category[a_key]' => 'another value',
    'some_category[a_second_key]' => 'yet another value',
    'some_category[innter_inner[key]]' => 'value',
    'something_else' => 'ahhahahahah'
  }
).to_s

puts RestClient.get(url)
puts RestClient.get(url)

puts RestCliemt.post(url)
