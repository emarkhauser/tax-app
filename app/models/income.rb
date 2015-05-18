class Income < ActiveRecord::Base
  	belongs_to :client
	validates :date, presence: true
	validates :client_id, presence: true
end
