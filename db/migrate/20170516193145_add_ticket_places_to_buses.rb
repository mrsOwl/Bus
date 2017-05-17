class AddTicketPlacesToBuses < ActiveRecord::Migration[5.1]
  def change
    add_column :buses, :tickets_places, :integer
  end
end
