class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :category
      t.boolean :isComplete?
      t.integer :course_id
    end
  end
end
