# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%i[shard_1 shard_2].each do |app_host|
  puts app_host.inspect
  ActiveRecord::Base.connected_to(shard: app_host) do
    Person.create!(name: "Person 1 #{app_host.to_s.humanize}")
    Person.create!(name: "Person 2 #{app_host.to_s.humanize}")
    Person.create!(name: "Person 3 #{app_host.to_s.humanize}")
    Person.create!(name: "Person 4 #{app_host.to_s.humanize}")
    puts Person.all.inspect
  end
end
