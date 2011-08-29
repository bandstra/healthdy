class Student < ActiveRecord::Base
    	  
	has_many :logins
  #in case a student loses a dining card and gets a new one, both need to be linked to the student
  has_many :cards

  #attr_accessible :firstname, :lastname, :diningcard
	
	validates :firstname, :presence => true
	validates :lastname, :presence => true
	#validates :diningcard, :presence => true, :length => 6
	#validates :hopeid, :presence => true, :length => 9
	
	def fullname
		"#{firstname} #{lastname}"
	end
		
end