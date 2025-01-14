puts "🌱 Seeding spices..."

puts "Creating organizations..."

org1 = Organization.create(name: 'Hope For All', location: 'Cambodia', bio: "Our mission is to ensure all human beings have a clean safe source of Water. No human should go thirsty- our goal is to ensure none do anymore.",
    build: "Help a team of engineers build water filters at our HeadQuarters in Denver, CO.",
    pack_and_ship: "Pick up our filters from the building community, Pack them up in a secure package, and ship them to the proper country. We will cover all shipping and packaging fees.",
    installation: "Join fellow Volunteers in flying to countries in need and help install these new water filters. See the pure joy on locals' faces when you grant them the access to clean water. *we will not pay for flights*"
);
org2 = Organization.create(name: 'WaterWell', location: 'Gambia, Africa', bio: "Our mission is to ensure all human beings have a clean safe source of Water. No human should go thirsty- our goal is to ensure none do anymore." , 
    build: "Help a team of engineers build water filters at our HeadQuarters in Denver, CO.",
    pack_and_ship: "Pick up our filters from the building community, Pack them up in a secure package, and ship them to the proper country. We will cover all shipping and packaging fees.",
    installation: "Join fellow Volunteers in flying to countries in need and help install these new water filters. See the pure joy on locals' faces when you grant them the access to clean water. *we will not pay for flights*"
);
org3 = Organization.create(name: 'Love&Water', location: 'Palestine', bio: "Our mission is to ensure all human beings have a clean safe source of Water. No human should go thirsty- our goal is to ensure none do anymore." , 
    build: "Help a team of engineers build water filters at our HeadQuarters in Denver, CO.",
    pack_and_ship: "Pick up our filters from the building community, Pack them up in a secure package, and ship them to the proper country. We will cover all shipping and packaging fees.",
    installation: "Join fellow Volunteers in flying to countries in need and help install these new water filters. See the pure joy on locals' faces when you grant them the access to clean water. *we will not pay for flights*"
);

puts "Creating volunteers..."
vol1 = Volunteer.create(name: 'Rodney', age: 25);
vol2 = Volunteer.create(name: 'Batoul', age: 24);
vol3 = Volunteer.create(name: 'Zelie', age: 18);

puts "Creating tasks..."

Task.create(name: 'Build Filters', description: 'Collaborate with a team of engineers on building filters.', time_commitment_hours: 10, volunteer: vol1, organization: org1);
Task.create(name: 'Pack and Ship Filters', description: 'Pick up Filters from warehouse to pack and ship them to the appropriate counrties.', time_commitment_hours: 15, volunteer: vol2, organization: org2);
Task.create(name: 'Install Filters', description: 'Fly out to a country in need and aid in installing rain-gutter filters.', time_commitment_hours: 100, volunteer: vol3, organization: org3);
puts "✅ Done seeding!"
