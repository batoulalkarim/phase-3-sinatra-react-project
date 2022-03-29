class Organization < ActiveRecord::Base
    has_many :tasks
    has_many :volunteers, through: :tasks

    accepts_nested_attributes_for :nested_tasks

    def create_organization(name, location)
        self.create(name: name, location: location)
    end

    

end