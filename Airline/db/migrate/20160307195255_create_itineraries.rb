class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :ciudad_salida
      t.string :ciudad_destino
      t.datetime :hora_salida
      t.datetime :hora_llegada

      t.timestamps null: false
    end
  end
end
