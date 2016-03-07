class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :nombre
      t.string :identificacion

      t.timestamps null: false
    end
  end
end
