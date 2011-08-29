class Login < ActiveRecord::Base
	belongs_to :student
	validates :swipe, :presence => true

end
