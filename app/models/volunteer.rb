class Volunteer < ActiveRecord::Base
    has_many :tasks
    has_many :organizations, through: :tasks

    def find_organization
        organizations.all
    end 

end