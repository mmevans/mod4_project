class AddPendingStudentIdsToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :pending_student_ids, :string, default: [], array: true
  end
end
