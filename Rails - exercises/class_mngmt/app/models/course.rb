class Course < ActiveRecord::Base
	#belongs_to :student
	#has_many :students, foreign_key :
	has_many :course_registrations
	has_many :students, through: :course_registrations
end
