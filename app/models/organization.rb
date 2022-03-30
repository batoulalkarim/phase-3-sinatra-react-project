class Organization < ActiveRecord::Base
    has_many :tasks
    has_many :volunteers, through: :tasks

    # accepts_nested_attributes_for :tasks

    def create_organization(name, location, bio, build, pack_and_ship, installation )
        self.create(name: name, location: location, bio: bio, build: build, pack_and_ship: pack_and_ship, installation: installation )
    end

#     params = { organization: {
#     nested_tasks: tasks_attributes: [
#         {build: "Help a team of engineers build water filters at our HeadQuarters in Denver, CO." },
#         {pack_and_ship: "Pick up our filters from the building community, Pack them up in a secure package, and ship them to the proper country. We will cover all shipping and packaging fees." },
#         {installation: "Join fellow Volunteers in flying to countries in need and help install these new water filters. See the pure joy on locals' faces when you grant them the access to clean water. *we will not pay for flights*"}
#     ]
# }}

end

