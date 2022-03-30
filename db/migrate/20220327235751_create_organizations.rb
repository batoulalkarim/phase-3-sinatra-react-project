class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :location
      t.string :bio
      t.string :build
      t.string :pack_and_ship
      t.string :installation
    end
  end
end
