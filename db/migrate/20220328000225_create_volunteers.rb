class CreateVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.integer :age
      t.references :volunteer
      t.references :organization
    end
  end
end
