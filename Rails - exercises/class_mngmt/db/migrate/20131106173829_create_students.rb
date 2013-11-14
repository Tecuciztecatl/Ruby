class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.integer :age
      t.text :bio
      t.string :title

      t.timestamps
    end
  end
end
