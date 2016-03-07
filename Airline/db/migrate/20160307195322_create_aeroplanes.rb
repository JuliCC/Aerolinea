class CreateAeroplanes < ActiveRecord::Migration
  def change
    create_table :aeroplanes do |t|
      t.string :codigo

      t.timestamps null: false
    end
  end
end
