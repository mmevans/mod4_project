class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :subject
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.string :student_ids, default: [], array: true
    end
  end
end
