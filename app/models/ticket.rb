class Ticket < ApplicationRecord
  belongs_to :bus

  before_save :generate_code

  def generate_code
  	self.code = SecureRandom.hex(5) 
  end
end

 