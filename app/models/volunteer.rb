class Volunteer < ActiveRecord::Base
    has_many :tasks
    has_many :organizations, through: :tasks

end