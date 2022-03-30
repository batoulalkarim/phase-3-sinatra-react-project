class Task < ActiveRecord::Base
    belongs_to :volunteer
    belongs_to :organization

    accepts_nested_attributes_for :organization
     
    def delete_task
        self.find_by(:volunteer_id)
        self.destroy
    end
    
    def update_task
        self.find_by(:name)
        self.update(:time_commitment_hours)
        self.save
    end 
end