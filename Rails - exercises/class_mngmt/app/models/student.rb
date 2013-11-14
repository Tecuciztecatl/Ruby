class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	#whitelist in model instead of the controller, this tells what can be POST by the app
	#attr_accessible :email

	#Both do the same, set many relationship from student to courses
	#has_many :courses
	#This changes the name to which the courses will be called
	#has_many :classes, foreign_key: :student_id, class_name: Course
	has_many :course_registrations#, dependent_destroy: true		#destroy student if course_regsitration is destroyed
	has_many :courses, through: :course_registrations
	#has_many :classes, through: :course_registrations, foreign_key: :course_id, class_name: Course
	has_many :posts

	#validation for be_valid, this works on the rspec and with the POST information
	#This both lines do the same
	#validates :full_name, presence: true, format: { with: /\b[A-Z]/ }
	#validates :email, presence: true, format: { with: /\w+/ }##, format: { with: // }
	#validates_presence_of :full_name

	#this adds a ".students" to class "Student" which will return the results of the query specified.
	scope :students, where(title: 'Student')

	before_create :populate_defaults

	private
		def populate_defaults
			#@title="Student" if title.blank?	#instance variables become unassignable when the object becomes frozen, so use self[:variable]
			self[:title]="Student" if title.blank?
		end
end
