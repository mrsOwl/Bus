class Bus < ApplicationRecord
	has_many :tickets

	validates :number, presence: true
	validates :bus_station, presence: true
	validates :tickets_places, presence: true
	validates :bus_time_start, presence: true
	validates :bus_time_stop, presence: true
end
