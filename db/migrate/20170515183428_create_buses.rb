class CreateBuses < ActiveRecord::Migration[5.1]
  def change
    create_table :buses do |t|
      t.string :number
      t.text :bus_station
      t.datetime :bus_time_start
      t.datetime :bus_time_stop

      t.timestamps
    end
  end
end
