class Organization < ActiveRecord::Base
    has_many :tasks
    has_many :volunteers, through: :tasks

end