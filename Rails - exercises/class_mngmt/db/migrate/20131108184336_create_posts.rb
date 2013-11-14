class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :topic
      t.string :date
      t.text :body
      t.integer :student_id

      t.timestamps
    end
  end
end
