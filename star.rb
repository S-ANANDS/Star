# frozen_string_literal: true

require 'net/http'
require 'json'
require 'pry'
puts "Options
      1.Planet
      2.People
      3.Starship "
puts 'Which option o search'
a = gets.chomp
if a == '1'
  b = gets.chomp
  uri = URI('https://swapi.co/api/planets/'"#{b}"'/')
  response = Net::HTTP.get(uri)
  q = JSON.parse(response)
  puts "Planet:#{q['name']}, Rotation: #{q['rotation_period']}, O.P:#{q['orbital_period']}, Diameter:#{q['diameter']} "
end
if a == '3'
  b = gets.chomp
  uri = URI('https://swapi.co/api/starships/'"#{b}"'/')
  response = Net::HTTP.get(uri)
  q = JSON.parse(response)
  puts "Name:#{q['name']}, Model_No: #{q['model']}, Made_By:#{q['manufacturer']} "
end
if a == '2'
  b = gets.chomp
  uri = URI('https://swapi.co/api/people/'"#{b}"'/')
  response = Net::HTTP.get(uri)
  q = JSON.parse(response)
  puts "Name:#{q['name']}, Height: #{q['height']}, Mass:#{q['mass']}, hair_color:#{q['skin_color']} "
end
