require 'rest-client'

puts "Input search content"
search = gets.chomp

response = RestClient.get "http://www.google.com/#q=#{search}"
puts "code:"
puts response.code
puts "cookies:"
puts response.cookies
puts "headers:"
puts response.headers
