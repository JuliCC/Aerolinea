class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :pilot_id
      t.integer :aeroplane_id
      t.integer :itinerary_id

      t.timestamps null: false
    end
  end
end
