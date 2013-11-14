class Student < ActiveRecord::Base
  #has_many :courses
  #has_many :classes, foreign_key: :student_id, class_name: Course
  has_many :course_registrations
  has_many :courses, through: :course_registrations

  validates :full_name, presence: true, format: { with: /\b[A-Z]/ }
  validates :email, presence: true, format: { with: /\w+@\w+\.\w+/, 
  message: I18n.t('hi') }
  #validates_presence_of :full_name

  before_create :populate_defaults

  scope :renee, where(full_name: 'Renee')

private
  def populate_defaults
    self[:title] = "Student" if title.blank?
  end

end
