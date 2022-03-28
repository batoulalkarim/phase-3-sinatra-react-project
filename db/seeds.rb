puts "🌱 Seeding spices..."

puts "Creating organizations..."

org1 = Organization.create(name: 'Hope For All', location: 'Cambodia');
org2 = Organization.create(name: 'WaterWell', location: 'Gambia, Africa');
org3 = Organization.create(name: 'Love&Water', location: 'Palestine');

puts "Creating volunteers..."
vol1 = Volunteer.create(name: 'Rodney', age: 25);
vol2 = Volunteer.create(name: 'Batoul', age: 24);
vol3 = Volunteer.create(name: 'Zelie', age: 18);

puts "Creating tasks..."

Task.create(name: 'Build Filters', description: 'Collaborate with a team of engineers on building filters.', time_commitment_hours: 10, volunteer: vol1, organization: org1);
Task.create(name: 'Pack and Ship Filters', description: 'Pick up Filters from warehouse to pack and ship them to the appropriate counrties.', time_commitment_hours: 15, volunteer: vol2, organization: org2);
Task.create(name: 'Install Filters', description: 'Fly out to a country in need and aid in installing rain-gutter filters.', time_commitment_hours: 100, volunteer: vol3, organization: org3);
puts "✅ Done seeding!"
