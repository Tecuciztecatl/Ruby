class RemoveStudentIdFromCourses < ActiveRecord::Migration
  def change
  	#Course.where(student_id: nil)	#We added this to remove what is on the course table, and is nil
    remove_column :courses, :student_id, :integer
  end
end
