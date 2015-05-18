class Expense < ActiveRecord::Base
  	belongs_to :category
	validates :date, presence: true
	validates :note, presence: true
	validates :total, presence: true
	validates :category_id, presence: true
end
