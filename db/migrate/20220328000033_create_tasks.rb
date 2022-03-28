class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :time_commitment_hours
      t.references :volunteer
      t.references :organization
    end
  end
end
