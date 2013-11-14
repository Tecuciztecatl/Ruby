class CreateCourseRegistrations < ActiveRecord::Migration
  def change
    create_table :course_registrations do |t|
      t.integer :student_id
      t.integer :course_id
      t.string :registration_number

      t.timestamps
    end
  end
end
