class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer :user_id
      t.integer :assignment_id
      t.integer :value
    end
  end
end
